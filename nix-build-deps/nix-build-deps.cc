#include <algorithm>
#include <iostream>
#include <set>
#include <nix/config.h>
#include <nix/derivations.hh>
#include <nix/store-api.hh>

#include <boost/graph/adjacency_list.hpp>
#include <boost/graph/graph_utility.hpp>
#include <boost/graph/dominator_tree.hpp>
#include <boost/property_map/property_map.hpp>

#include <nlohmann/json.hpp>

using json = nlohmann::json;
using namespace boost;

static nix::ref<nix::Store> openNixStore() {
    nix::loadConfFile();
    nix::settings.lockCPU = false;
    return nix::openStore();
}

struct vertex_properties {
  std::string path;
  std::optional<int> idom;
};

typedef adjacency_list<vecS, vecS, bidirectionalS, vertex_properties> dependency_graph;
typedef property_map<dependency_graph, std::string vertex_properties::*>::type vertex_path_t;

class walker {
public:
    nix::ref<nix::Store> store;
    std::unordered_map<std::string, dependency_graph::vertex_descriptor> seen;
    json result;
    dependency_graph deps_graph;
    vertex_path_t vertex_path;
    dependency_graph::vertex_descriptor root_vertex;

public:
    walker(nix::ref<nix::Store> store)
      : store{store}
      , vertex_path{get(&vertex_properties::path, deps_graph)}
    { }

    void findDepsRecursive(
        const std::string& path,
        std::optional<dependency_graph::vertex_descriptor> parent = std::nullopt
      ) {
        // Always add the edge that cause us to reach this node
        auto existing = seen.find(path);

        dependency_graph::vertex_descriptor self;

        if (existing == seen.end()) {
            self = add_vertex(deps_graph);
            seen.emplace(path, self);
        } else {
            self = existing->second;
        }

        if (parent) {
          add_edge(vertex(*parent, deps_graph), vertex(self, deps_graph), deps_graph);
        }

        // Bail if we've already fully explored this node
        if (existing != seen.end()) {
          return;
        }

        if (!parent) {
          root_vertex = self;
        }
        vertex_path[self] = path;

        const auto &drv = store->derivationFromPath(path);

        json deps = json::array();

        for (const auto &in : drv.inputDrvs) {
            const auto &indrv = store->derivationFromPath(in.first);

            deps.emplace_back(in.first);
            findDepsRecursive(in.first, std::optional<dependency_graph::vertex_descriptor>{self});
        }

        result[path] = json{
          {"fixed_output", drv.isFixedOutput()},
          {"inputs", deps}
        };
    }
};

static void usage() {
    std::cout << "Usage: nix-build-deps foo.drv" << std::endl;
}

int main(int argc, char **argv) {
    if (argc < 2) {
        usage();
        exit(1);
    }

    walker w{openNixStore()};

    w.findDepsRecursive(argv[1]);

    property_map<dependency_graph, std::optional<int> vertex_properties::*>::type idom =
      get(&vertex_properties::idom, w.deps_graph);

    lengauer_tarjan_dominator_tree(w.deps_graph, w.root_vertex, idom);

    dependency_graph::vertex_iterator i, end;
    for(boost::tie(i, end) = vertices(w.deps_graph); i != end; i++) {
      const std::string& path = w.vertex_path[*i];
      auto & dominator = idom[*i];
      if (dominator) {
        w.result[path]["dominator"] = w.vertex_path[*dominator];
      }
    }

    std::cout << w.result << std::endl;

    return 0;
}
