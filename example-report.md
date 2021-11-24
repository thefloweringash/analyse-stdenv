# Derivation by stdenv
## no stdenv
 - bootstrap-stage0-stdenv-darwin.drv
 - bootstrap-stage0-stdenv-darwin.drv
 - bootstrap-stage1-stdenv-darwin.drv
 - bootstrap-stage1-stdenv-darwin.drv
 - bootstrap-stage2-stdenv-darwin.drv
 - bootstrap-stage2-stdenv-darwin.drv
 - bootstrap-stage2-stdenv-darwin.drv
 - bootstrap-stage3-stdenv-darwin.drv
 - bootstrap-stage3-stdenv-darwin.drv
 - bootstrap-stage4-stdenv-darwin.drv
 - bootstrap-stage4-stdenv-darwin.drv
 - bootstrap-tools.drv
 - stdenv-darwin.drv
 - stdenv-darwin.drv

## bootstrap-stage0-stdenv-darwin.drv
 - bootstrap-stage0-binutils-wrapper-.drv (i=1, e=1, s=[1])
 - bootstrap-stage0-binutils-wrapper-.drv (i=0, e=4, s=[2,3])
 - bootstrap-stage0-clang-wrapper-7.1.0.drv (i=0, e=9, s=[1])
 - darwin-stubs-10.12.drv (i=1, e=0)

## bootstrap-stage0-stdenv-darwin.drv
 - bootstrap-stage0-CF.drv (i=0, e=0, s=[1])
 - bootstrap-stage0-Libsystem.drv (i=2, e=2, s=[1])
 - bootstrap-stage0-clang.drv (i=1, e=4, s=[1,2,3])
 - bootstrap-stage0-compiler-rt.drv (i=1, e=3, s=[1,2,3])
 - bootstrap-stage0-coreutils.drv (i=2, e=0, s=[1])
 - bootstrap-stage0-cpio.drv (i=0, e=1)
 - bootstrap-stage0-gnugrep.drv (i=3, e=0, s=[1])
 - bootstrap-stage0-libcxx.drv (i=1, e=1, s=[1,2])
 - bootstrap-stage0-libcxxabi.drv (i=1, e=1, s=[1,2])
 - mirrors-list.drv (i=137, e=0)

## bootstrap-stage1-stdenv-darwin.drv
 - CarbonHeaders-18.1.drv (i=1, e=0)
 - CommonCrypto-60092.50.5.drv (i=1, e=0)
 - Libc-1158.50.2.drv (i=1, e=0)
 - Libc-825.40.1.drv (i=1, e=0)
 - Libinfo-477.50.4.drv (i=2, e=0)
 - Libm-2026.drv (i=1, e=0)
 - Libnotify-165.20.1.drv (i=1, e=0)
 - architecture-268.drv (i=1, e=0)
 - bootstrap-stage0-clang-wrapper-7.1.0.drv (i=0, e=2, s=[2])
 - bootstrap-stage0-clang-wrapper-7.1.0.drv (i=0, e=0, s=[2])
 - copyfile-138.drv (i=1, e=0)
 - darwin-stubs-10.12.drv (i=4, e=2)
 - dyld-433.5.drv (i=1, e=0, s=[2,3,99])
 - hfs-366.70.1.drv (i=1, e=0)
 - hook.drv (i=5, e=0)
 - hook.drv (i=1, e=0)
 - hook.drv (i=1, e=0)
 - hook.drv (i=2, e=0)
 - install-shell-files.drv (i=1, e=0)
 - launchd-842.92.1.drv (i=2, e=0)
 - libclosure-65.drv (i=1, e=0)
 - libdispatch-442.1.4.drv (i=2, e=0)
 - libplatform-126.50.8.drv (i=1, e=0)
 - libpthread-218.60.3.drv (i=1, e=0)
 - libresolv-64.drv (i=1, e=0)
 - libutil-47.30.1.drv (i=1, e=0)
 - mDNSResponder-765.50.9.drv (i=2, e=0)
 - nuke-references.drv (i=1, e=0)
 - pkg-config-wrapper-0.29.2.drv (i=5, e=1)
 - ps-adv_cmds-119.drv (i=1, e=0)
 - python-setup-hook.sh.drv (i=1, e=0)
 - removefile-45.drv (i=1, e=0)
 - xnu-3789.70.16.drv (i=4, e=0)

## bootstrap-stage1-stdenv-darwin.drv
 - Csu-85.drv (i=1, e=0)
 - ICU-66108.drv (i=1, e=0, s=[2,3])
 - IOKit-.drv (i=1, e=0)
 - Libsystem-1238.60.2.drv (i=2, e=8, s=[2,3,99])
 - Security-55471.14.18.drv (i=1, e=0)
 - adv_cmds-119.drv (i=1, e=0, s=[2])
 - autoconf-2.71.drv (i=4, e=2)
 - automake-1.16.3.drv (i=3, e=2)
 - bash-5.1-p8.drv (i=2, e=0)
 - bison-3.8.2.drv (i=5, e=3)
 - bootstrap_cmds-121.drv (i=3, e=0)
 - brotli-1.0.9.drv (i=1, e=0, s=[2,3])
 - bsdmake-24.drv (i=1, e=0)
 - bzip2-1.0.6.0.2.drv (i=2, e=0)
 - c-ares-1.17.2.drv (i=1, e=0)
 - cctools-port-949.0.1.drv (i=1, e=0)
 - cmake-boot-3.21.2.drv (i=2, e=9)
 - configd-453.19.drv (i=1, e=0)
 - coreutils-9.0.drv (i=3, e=2, s=[2,3])
 - curl-7.79.1.drv (i=1, e=1, s=[2,3])
 - eap8021x-222.40.1.drv (i=1, e=0)
 - ed-1.17.drv (i=2, e=0)
 - expand-response-params.drv (i=2, e=0, s=[2])
 - expat-2.4.1.drv (i=1, e=0)
 - flex-2.6.4.drv (i=3, e=1)
 - gettext-0.21.drv (i=4, e=3)
 - gmp-6.2.1.drv (i=1, e=0, s=[2,3])
 - gnugrep-3.7.drv (i=2, e=0, s=[2])
 - gnum4-1.4.19.drv (i=6, e=1)
 - help2man-1.48.5.drv (i=2, e=0)
 - libev-4.33.drv (i=1, e=0)
 - libffi-3.4.2.drv (i=1, e=0)
 - libiconv-50.drv (i=5, e=1, s=[2,3])
 - libidn-1.38.drv (i=1, e=0)
 - libkrb5-1.18.drv (i=1, e=0, s=[2,3])
 - libresolv-64.drv (i=1, e=0)
 - libssh2-1.10.0.drv (i=1, e=0, s=[2,3])
 - libtapi-1100.0.11.drv (i=1, e=0)
 - libtool-2.4.6.drv (i=2, e=2)
 - libxml2-2.9.12.drv (i=1, e=0, s=[2,3])
 - lzip-1.22.drv (i=1, e=0)
 - ncurses-6.2.drv (i=3, e=0)
 - nghttp2-1.43.0.drv (i=1, e=0, s=[2,3])
 - ninja-1.10.2.drv (i=1, e=2)
 - objc4-709.1.drv (i=2, e=0)
 - openssl-1.1.1l.drv (i=4, e=0, s=[2,3])
 - patchutils-0.3.3.drv (i=0, e=2)
 - pcre-8.44.drv (i=1, e=0, s=[2])
 - perl-5.34.0.drv (i=16, e=8)
 - perl5.34.0-gettext-1.07.drv (i=1, e=0)
 - pkg-config-0.29.2.drv (i=1, e=0)
 - ppp-838.50.1.drv (i=1, e=0)
 - python3-minimal-3.9.6.drv (i=7, e=10)
 - re2c-2.2.drv (i=1, e=0)
 - swift-corefoundation.drv (i=0, e=0, s=[2,3])
 - texinfo-6.8.drv (i=1, e=0)
 - unifdef-2.12.drv (i=3, e=0)
 - unzip-6.0.drv (i=0, e=9)
 - xz-5.2.5.drv (i=4, e=0, s=[2,3])
 - zlib-1.2.11.drv (i=5, e=0, s=[2,3])

## bootstrap-stage2-stdenv-darwin.drv
 - libcxx-7.1.0.drv (i=1, e=2, s=[3,99])
 - libcxxabi-7.1.0.drv (i=2, e=3, s=[3,99])

## bootstrap-stage2-stdenv-darwin.drv
 - bootstrap-stage0-clang-wrapper-7.1.0.drv (i=0, e=4, s=[3])
 - hook.drv (i=1, e=0)
 - hook.drv (i=1, e=0)
 - hook.drv (i=1, e=0)

## bootstrap-stage2-stdenv-darwin.drv
 - adv_cmds-119.drv (i=0, e=1, s=[3,4,99])
 - bash-5.1-p8.drv (i=2, e=98, s=[3,4,99])
 - bsdmake-24.drv (i=1, e=0)
 - expand-response-params.drv (i=1, e=0, s=[3])
 - gnugrep-3.7.drv (i=1, e=0, s=[3])
 - libiconv-50.drv (i=0, e=6, s=[99])
 - pcre-8.44.drv (i=1, e=0, s=[3])

## bootstrap-stage3-stdenv-darwin.drv
 - cctools-binutils-darwin-wrapper-949.0.1.drv (i=1, e=0)
 - clang-6-10-LLVMgold-path.patch.drv (i=1, e=0)
 - clang-wrapper-7.1.0.drv (i=0, e=4, s=[4])
 - hook.drv (i=5, e=0)
 - hook.drv (i=1, e=0)
 - hook.drv (i=1, e=0)
 - hook.drv (i=1, e=0)
 - hook.drv (i=1, e=0)
 - install-shell-files.drv (i=1, e=0)
 - setup-hook.drv (i=1, e=0)

## bootstrap-stage3-stdenv-darwin.drv
 - ICU-66108.drv (i=1, e=0)
 - binutils-2.35.2.drv (i=1, e=0)
 - bzip2-1.0.6.0.2.drv (i=0, e=1, s=[99])
 - cctools-binutils-darwin-949.0.1.drv (i=1, e=0)
 - cctools-port-949.0.1.drv (i=1, e=0)
 - clang-7.1.0.drv (i=1, e=1)
 - compiler-rt-libc-7.1.0.drv (i=1, e=1, s=[99])
 - coreutils-9.0.drv (i=0, e=1)
 - coreutils-9.0.drv (i=4, e=3, s=[99])
 - diffutils-3.8.drv (i=0, e=0, s=[99])
 - ed-1.17.drv (i=1, e=0, s=[99])
 - expand-response-params.drv (i=2, e=0)
 - findutils-4.8.0.drv (i=0, e=0, s=[99])
 - gawk-5.1.1.drv (i=0, e=0, s=[99])
 - gmp-6.2.1.drv (i=1, e=0, s=[99])
 - gnugrep-3.7.drv (i=2, e=2, s=[99])
 - gnumake-4.3.drv (i=0, e=0, s=[99])
 - gnused-4.8.drv (i=0, e=0, s=[99])
 - gzip-1.11.drv (i=0, e=0, s=[99])
 - libffi-3.4.2.drv (i=1, e=0, s=[99])
 - libtapi-1100.0.11.drv (i=1, e=0)
 - libxml2-2.9.12.drv (i=3, e=2, s=[99])
 - llvm-7.1.0.drv (i=4, e=3, s=[99])
 - lzip-1.22.drv (i=1, e=0)
 - ncurses-6.2.drv (i=2, e=1, s=[99])
 - objc4-709.1.drv (i=2, e=0)
 - patch-2.7.6.drv (i=0, e=0, s=[99])
 - patchutils-0.3.3.drv (i=0, e=3)
 - pcre-8.44.drv (i=1, e=0, s=[99])
 - swift-corefoundation.drv (i=0, e=0, s=[4])
 - texinfo-6.8.drv (i=2, e=0)
 - xz-5.2.5.drv (i=5, e=2, s=[4,99])
 - zlib-1.2.11.drv (i=3, e=7, s=[99])

## bootstrap-stage4-stdenv-darwin.drv
 - cctools-binutils-darwin-wrapper-949.0.1.drv (i=1, e=0, s=[99])
 - clang-6-10-LLVMgold-path.patch.drv (i=1, e=0)
 - clang-wrapper-7.1.0.drv (i=0, e=1, s=[99])
 - hook.drv (i=3, e=0)
 - hook.drv (i=1, e=0)
 - hook.drv (i=1, e=0)
 - hook.drv (i=1, e=0)
 - install-shell-files.drv (i=1, e=0)
 - pkg-config-wrapper-0.29.2.drv (i=3, e=0)

## bootstrap-stage4-stdenv-darwin.drv
 - ICU-66108.drv (i=1, e=0, s=[99])
 - autoconf-2.71.drv (i=4, e=0)
 - automake-1.16.3.drv (i=3, e=0)
 - binutils-2.35.2.drv (i=1, e=0, s=[99])
 - bison-3.8.2.drv (i=3, e=0)
 - bootstrap_cmds-121.drv (i=1, e=0)
 - brotli-1.0.9.drv (i=1, e=0, s=[99])
 - c-ares-1.17.2.drv (i=1, e=0)
 - cctools-binutils-darwin-949.0.1.drv (i=1, e=0, s=[99])
 - cctools-port-949.0.1.drv (i=1, e=0, s=[99])
 - clang-7.1.0.drv (i=1, e=1, s=[99])
 - curl-7.79.1.drv (i=1, e=0, s=[99])
 - expand-response-params.drv (i=2, e=0, s=[99])
 - flex-2.6.4.drv (i=1, e=0)
 - gettext-0.21.drv (i=5, e=0, s=[99])
 - gnum4-1.4.19.drv (i=4, e=0)
 - gnutar-1.34.drv (i=0, e=0, s=[99])
 - help2man-1.48.5.drv (i=2, e=0)
 - libev-4.33.drv (i=1, e=0)
 - libidn-1.38.drv (i=1, e=0)
 - libkrb5-1.18.drv (i=1, e=0, s=[99])
 - libssh2-1.10.0.drv (i=1, e=0, s=[99])
 - libtapi-1100.0.11.drv (i=1, e=0, s=[99])
 - libtool-2.4.6.drv (i=2, e=0)
 - nghttp2-1.43.0.drv (i=1, e=0, s=[99])
 - objc4-709.1.drv (i=2, e=0)
 - openssl-1.1.1l.drv (i=4, e=0, s=[99])
 - patchutils-0.3.3.drv (i=0, e=1)
 - perl-5.34.0.drv (i=12, e=0)
 - perl5.34.0-gettext-1.07.drv (i=1, e=0)
 - pkg-config-0.29.2.drv (i=1, e=0)
 - swift-corefoundation.drv (i=0, e=0, s=[99])
 - texinfo-6.8.drv (i=1, e=0)
 - unzip-6.0.drv (i=0, e=4)

## stdenv-darwin.drv
 - mirrors-list.drv (i=1, e=0)
 - pkg-config-wrapper-0.29.2.drv (i=2, e=0)

## stdenv-darwin.drv
 - c-ares-1.17.2.drv (i=1, e=0)
 - curl-7.79.1.drv (i=1, e=0)
 - hello-2.10.drv (i=0, e=0)
 - libev-4.33.drv (i=1, e=0)
 - libssh2-1.10.0.drv (i=1, e=0)
 - nghttp2-1.43.0.drv (i=1, e=0)
 - openssl-1.1.1l.drv (i=3, e=0)
 - perl-5.34.0.drv (i=2, e=1)
 - pkg-config-0.29.2.drv (i=1, e=0)

# Rebuilds by package name
 - CarbonHeaders-18.1.drv 1
 - CommonCrypto-60092.50.5.drv 1
 - Csu-85.drv 1
 - ICU-66108.drv 1,3,4
 - IOKit-.drv 1
 - Libc-1158.50.2.drv 1
 - Libc-825.40.1.drv 1
 - Libinfo-477.50.4.drv 1
 - Libm-2026.drv 1
 - Libnotify-165.20.1.drv 1
 - Libsystem-1238.60.2.drv 1
 - Security-55471.14.18.drv 1
 - adv_cmds-119.drv 1,2
 - architecture-268.drv 1
 - autoconf-2.71.drv 1,4
 - automake-1.16.3.drv 1,4
 - bash-5.1-p8.drv 1,2
 - binutils-2.35.2.drv 3,4
 - bison-3.8.2.drv 1,4
 - bootstrap-stage0-CF.drv 0
 - bootstrap-stage0-Libsystem.drv 0
 - bootstrap-stage0-binutils-wrapper-.drv 0,0
 - bootstrap-stage0-clang-wrapper-7.1.0.drv 0,1,1,2
 - bootstrap-stage0-clang.drv 0
 - bootstrap-stage0-compiler-rt.drv 0
 - bootstrap-stage0-coreutils.drv 0
 - bootstrap-stage0-cpio.drv 0
 - bootstrap-stage0-gnugrep.drv 0
 - bootstrap-stage0-libcxx.drv 0
 - bootstrap-stage0-libcxxabi.drv 0
 - bootstrap_cmds-121.drv 1,4
 - brotli-1.0.9.drv 1,4
 - bsdmake-24.drv 1,2
 - bzip2-1.0.6.0.2.drv 1,3
 - c-ares-1.17.2.drv 1,4,99
 - cctools-binutils-darwin-949.0.1.drv 3,4
 - cctools-binutils-darwin-wrapper-949.0.1.drv 3,4
 - cctools-port-949.0.1.drv 1,3,4
 - clang-6-10-LLVMgold-path.patch.drv 3,4
 - clang-7.1.0.drv 3,4
 - clang-wrapper-7.1.0.drv 3,4
 - cmake-boot-3.21.2.drv 1
 - compiler-rt-libc-7.1.0.drv 3
 - configd-453.19.drv 1
 - copyfile-138.drv 1
 - coreutils-9.0.drv 1,3,3
 - curl-7.79.1.drv 1,4,99
 - darwin-stubs-10.12.drv 0,1
 - diffutils-3.8.drv 3
 - dyld-433.5.drv 1
 - eap8021x-222.40.1.drv 1
 - ed-1.17.drv 1,3
 - expand-response-params.drv 1,2,3,4
 - expat-2.4.1.drv 1
 - findutils-4.8.0.drv 3
 - flex-2.6.4.drv 1,4
 - gawk-5.1.1.drv 3
 - gettext-0.21.drv 1,4
 - gmp-6.2.1.drv 1,3
 - gnugrep-3.7.drv 1,2,3
 - gnum4-1.4.19.drv 1,4
 - gnumake-4.3.drv 3
 - gnused-4.8.drv 3
 - gnutar-1.34.drv 4
 - gzip-1.11.drv 3
 - hello-2.10.drv 99
 - help2man-1.48.5.drv 1,4
 - hfs-366.70.1.drv 1
 - hook.drv 1,1,1,1,2,2,2,3,3,3,3,3,4,4,4,4
 - install-shell-files.drv 1,3,4
 - launchd-842.92.1.drv 1
 - libclosure-65.drv 1
 - libcxx-7.1.0.drv 2
 - libcxxabi-7.1.0.drv 2
 - libdispatch-442.1.4.drv 1
 - libev-4.33.drv 1,4,99
 - libffi-3.4.2.drv 1,3
 - libiconv-50.drv 1,2
 - libidn-1.38.drv 1,4
 - libkrb5-1.18.drv 1,4
 - libplatform-126.50.8.drv 1
 - libpthread-218.60.3.drv 1
 - libresolv-64.drv 1,1
 - libssh2-1.10.0.drv 1,4,99
 - libtapi-1100.0.11.drv 1,3,4
 - libtool-2.4.6.drv 1,4
 - libutil-47.30.1.drv 1
 - libxml2-2.9.12.drv 1,3
 - llvm-7.1.0.drv 3
 - lzip-1.22.drv 1,3
 - mDNSResponder-765.50.9.drv 1
 - mirrors-list.drv 0,99
 - ncurses-6.2.drv 1,3
 - nghttp2-1.43.0.drv 1,4,99
 - ninja-1.10.2.drv 1
 - nuke-references.drv 1
 - objc4-709.1.drv 1,3,4
 - openssl-1.1.1l.drv 1,4,99
 - patch-2.7.6.drv 3
 - patchutils-0.3.3.drv 1,3,4
 - pcre-8.44.drv 1,2,3
 - perl-5.34.0.drv 1,4,99
 - perl5.34.0-gettext-1.07.drv 1,4
 - pkg-config-0.29.2.drv 1,4,99
 - pkg-config-wrapper-0.29.2.drv 1,4,99
 - ppp-838.50.1.drv 1
 - ps-adv_cmds-119.drv 1
 - python-setup-hook.sh.drv 1
 - python3-minimal-3.9.6.drv 1
 - re2c-2.2.drv 1
 - removefile-45.drv 1
 - setup-hook.drv 3
 - swift-corefoundation.drv 1,3,4
 - texinfo-6.8.drv 1,3,4
 - unifdef-2.12.drv 1
 - unzip-6.0.drv 1,4
 - xnu-3789.70.16.drv 1
 - xz-5.2.5.drv 1,3
 - zlib-1.2.11.drv 1,3

# Dominator tree
```
hello-2.10.drv
|-- ICU-66108.drv@1
|-- ICU-66108.drv@4
|-- Libsystem-1238.60.2.drv@1
|  |-- CarbonHeaders-18.1.drv@1
|  |-- CommonCrypto-60092.50.5.drv@1
|  |-- Csu-85.drv@1
|  |-- Libc-1158.50.2.drv@1
|  |  |-- Libc-825.40.1.drv@1
|  |  `-- ed-1.17.drv@1
|  |     `-- lzip-1.22.drv@1
|  |        `-- texinfo-6.8.drv@1
|  |-- Libinfo-477.50.4.drv@1
|  |-- Libm-2026.drv@1
|  |-- Libnotify-165.20.1.drv@1
|  |-- architecture-268.drv@1
|  |-- bootstrap-stage0-cpio.drv@0
|  |-- cctools-port-949.0.1.drv@1
|  |  |-- install-shell-files.drv@1
|  |  `-- libtapi-1100.0.11.drv@1
|  |-- copyfile-138.drv@1
|  |-- hfs-366.70.1.drv@1
|  |-- launchd-842.92.1.drv@1
|  |-- libclosure-65.drv@1
|  |-- libdispatch-442.1.4.drv@1
|  |-- libplatform-126.50.8.drv@1
|  |-- libpthread-218.60.3.drv@1
|  |-- libresolv-64.drv@1
|  |  `-- configd-453.19.drv@1
|  |     |-- IOKit-.drv@1
|  |     |-- Security-55471.14.18.drv@1
|  |     |-- eap8021x-222.40.1.drv@1
|  |     `-- ppp-838.50.1.drv@1
|  |-- libresolv-64.drv@1
|  |-- libutil-47.30.1.drv@1
|  |-- mDNSResponder-765.50.9.drv@1
|  |-- removefile-45.drv@1
|  |-- unifdef-2.12.drv@1
|  `-- xnu-3789.70.16.drv@1
|-- adv_cmds-119.drv@1
|  `-- bsdmake-24.drv@1
|-- adv_cmds-119.drv@2
|  `-- bsdmake-24.drv@2
|     `-- hook.drv@2
|        `-- hook.drv@2
|-- autoconf-2.71.drv@4
|-- autoconf-2.71.drv@1
|-- automake-1.16.3.drv@1
|-- automake-1.16.3.drv@4
|-- bash-5.1-p8.drv@1
|-- bash-5.1-p8.drv@2
|-- binutils-2.35.2.drv@4
|  `-- texinfo-6.8.drv@4
|-- bison-3.8.2.drv@4
|-- bison-3.8.2.drv@1
|-- bootstrap-stage0-CF.drv@0
|-- bootstrap-stage0-Libsystem.drv@0
|  `-- darwin-stubs-10.12.drv@0
|-- bootstrap-stage0-binutils-wrapper-.drv@0
|-- bootstrap-stage0-binutils-wrapper-.drv@0
|-- bootstrap-stage0-clang-wrapper-7.1.0.drv@0
|-- bootstrap-stage0-clang-wrapper-7.1.0.drv@2
|-- bootstrap-stage0-clang-wrapper-7.1.0.drv@1
|-- bootstrap-stage0-clang.drv@0
|-- bootstrap-stage0-compiler-rt.drv@0
|-- bootstrap-stage0-coreutils.drv@0
|-- bootstrap-stage0-gnugrep.drv@0
|-- bootstrap-stage0-libcxx.drv@0
|-- bootstrap-stage0-libcxxabi.drv@0
|-- bootstrap-stage0-stdenv-darwin.drv@
|-- bootstrap-stage0-stdenv-darwin.drv@
|-- bootstrap-stage1-stdenv-darwin.drv@
|-- bootstrap-stage1-stdenv-darwin.drv@
|-- bootstrap-stage2-stdenv-darwin.drv@
|  `-- bootstrap-stage0-clang-wrapper-7.1.0.drv@1
|-- bootstrap-stage2-stdenv-darwin.drv@
|-- bootstrap-stage2-stdenv-darwin.drv@
|-- bootstrap-stage3-stdenv-darwin.drv@
|-- bootstrap-stage3-stdenv-darwin.drv@
|-- bootstrap-stage4-stdenv-darwin.drv@
|-- bootstrap-stage4-stdenv-darwin.drv@
|-- bootstrap-tools.drv@
|-- bootstrap_cmds-121.drv@1
|-- brotli-1.0.9.drv@4
|-- brotli-1.0.9.drv@1
|-- bzip2-1.0.6.0.2.drv@1
|-- bzip2-1.0.6.0.2.drv@3
|-- cctools-binutils-darwin-949.0.1.drv@4
|-- cctools-binutils-darwin-wrapper-949.0.1.drv@4
|-- cctools-port-949.0.1.drv@4
|  `-- install-shell-files.drv@4
|-- clang-7.1.0.drv@4
|  |-- clang-6-10-LLVMgold-path.patch.drv@4
|  `-- hook.drv@4
|-- clang-7.1.0.drv@3
|  |-- clang-6-10-LLVMgold-path.patch.drv@3
|  `-- hook.drv@3
|-- clang-wrapper-7.1.0.drv@3
|  |-- cctools-binutils-darwin-wrapper-949.0.1.drv@3
|  |  `-- cctools-binutils-darwin-949.0.1.drv@3
|  |     |-- binutils-2.35.2.drv@3
|  |     `-- cctools-port-949.0.1.drv@3
|  |        |-- install-shell-files.drv@3
|  |        `-- libtapi-1100.0.11.drv@3
|  `-- expand-response-params.drv@3
|-- clang-wrapper-7.1.0.drv@4
|-- cmake-boot-3.21.2.drv@1
|  `-- ps-adv_cmds-119.drv@1
|-- compiler-rt-libc-7.1.0.drv@3
|-- coreutils-9.0.drv@1
|-- coreutils-9.0.drv@3
|-- curl-7.79.1.drv@1
|  `-- libidn-1.38.drv@1
|-- curl-7.79.1.drv@4
|  `-- libidn-1.38.drv@4
|-- darwin-stubs-10.12.drv@1
|-- diffutils-3.8.drv@3
|-- dyld-433.5.drv@1
|-- ed-1.17.drv@3
|  `-- lzip-1.22.drv@3
|-- expand-response-params.drv@2
|-- expand-response-params.drv@1
|-- expand-response-params.drv@4
|-- findutils-4.8.0.drv@3
|-- flex-2.6.4.drv@1
|-- gawk-5.1.1.drv@3
|-- gettext-0.21.drv@1
|-- gettext-0.21.drv@4
|-- gmp-6.2.1.drv@3
|-- gmp-6.2.1.drv@1
|-- gnugrep-3.7.drv@3
|-- gnugrep-3.7.drv@2
|-- gnugrep-3.7.drv@1
|-- gnum4-1.4.19.drv@1
|-- gnum4-1.4.19.drv@4
|-- gnumake-4.3.drv@3
|-- gnused-4.8.drv@3
|-- gnutar-1.34.drv@4
|-- gzip-1.11.drv@3
|  `-- setup-hook.drv@3
|-- help2man-1.48.5.drv@4
|  `-- perl5.34.0-gettext-1.07.drv@4
|-- help2man-1.48.5.drv@1
|  `-- perl5.34.0-gettext-1.07.drv@1
|-- hook.drv@1
|  `-- hook.drv@1
|-- hook.drv@4
|-- hook.drv@3
|-- hook.drv@1
|-- libcxx-7.1.0.drv@2
|  `-- hook.drv@2
|-- libcxxabi-7.1.0.drv@2
|-- libffi-3.4.2.drv@3
|-- libiconv-50.drv@2
|-- libiconv-50.drv@1
|-- libkrb5-1.18.drv@1
|-- libkrb5-1.18.drv@4
|  `-- bootstrap_cmds-121.drv@4
|     `-- flex-2.6.4.drv@4
|-- libssh2-1.10.0.drv@4
|-- libssh2-1.10.0.drv@1
|-- libtapi-1100.0.11.drv@4
|-- libtool-2.4.6.drv@1
|-- libtool-2.4.6.drv@4
|-- libxml2-2.9.12.drv@3
|  `-- hook.drv@3
|-- libxml2-2.9.12.drv@1
|  `-- hook.drv@1
|-- llvm-7.1.0.drv@3
|-- mirrors-list.drv@0
|-- ncurses-6.2.drv@1
|-- ncurses-6.2.drv@3
|-- nghttp2-1.43.0.drv@4
|  |-- c-ares-1.17.2.drv@4
|  `-- libev-4.33.drv@4
|-- nghttp2-1.43.0.drv@1
|  |-- c-ares-1.17.2.drv@1
|  `-- libev-4.33.drv@1
|-- ninja-1.10.2.drv@1
|  `-- re2c-2.2.drv@1
|-- objc4-709.1.drv@4
|-- objc4-709.1.drv@3
|-- objc4-709.1.drv@1
|-- openssl-1.1.1l.drv@4
|-- openssl-1.1.1l.drv@1
|-- patch-2.7.6.drv@3
|-- patchutils-0.3.3.drv@3
|  `-- hook.drv@3
|     `-- hook.drv@3
|-- patchutils-0.3.3.drv@1
|-- pcre-8.44.drv@3
|-- pcre-8.44.drv@1
|-- pcre-8.44.drv@2
|-- perl-5.34.0.drv@1
|-- perl-5.34.0.drv@4
|-- pkg-config-wrapper-0.29.2.drv@4
|  `-- pkg-config-0.29.2.drv@4
|-- pkg-config-wrapper-0.29.2.drv@1
|  `-- pkg-config-0.29.2.drv@1
|-- python3-minimal-3.9.6.drv@1
|  |-- expat-2.4.1.drv@1
|  |-- libffi-3.4.2.drv@1
|  |-- nuke-references.drv@1
|  `-- python-setup-hook.sh.drv@1
|-- stdenv-darwin.drv@
|-- swift-corefoundation.drv@3
|  `-- ICU-66108.drv@3
|-- swift-corefoundation.drv@4
|-- swift-corefoundation.drv@1
|-- texinfo-6.8.drv@3
|-- unzip-6.0.drv@1
|-- unzip-6.0.drv@4
|-- xz-5.2.5.drv@3
|-- xz-5.2.5.drv@1
|-- zlib-1.2.11.drv@1
`-- zlib-1.2.11.drv@3
```
