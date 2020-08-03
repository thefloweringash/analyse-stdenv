#include <algorithm>
#include <iostream>
#include <set>
#include <nix/config.h>
#include <nix/derivations.hh>
#include <nix/store-api.hh>

#include <nlohmann/json.hpp>

using json = nlohmann::json;

static nix::ref<nix::Store> openNixStore() {
    nix::loadConfFile();
    nix::settings.lockCPU = false;
    return nix::openStore();
}

class walker {
    nix::ref<nix::Store> store;
    std::set<std::string> seen;
    json result;

public:
    walker() : store(openNixStore()) {
    }

    void findDepsRecursive(const std::string& path, int nesting = 0) {
        if (seen.find(path) != seen.end()) {
            return;
        }

        seen.emplace(path);

        const auto &drv = store->derivationFromPath(path);

        json deps = json::array();

        for (const auto &in : drv.inputDrvs) {
            const auto &indrv = store->derivationFromPath(in.first);
            if (indrv.isFixedOutput()) {
              continue;
            }

            deps.emplace_back(in.first);
            findDepsRecursive(in.first);
        }

        result[path] = deps;
    }

    json getResult() {
        return result;
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

    walker w;
    w.findDepsRecursive(argv[1]);
    std::cout << w.getResult();
}
