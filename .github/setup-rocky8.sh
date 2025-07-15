#!/bin/bash

# Enable powertools repo
dnf install -y 'dnf-command(config-manager)'
dnf config-manager --set-enabled powertools

# Install build deps (compiler only, distro is too old to build qemu)
dnf install -y make git file diffutils autoconf automake python3 libmpc-devel mpfr-devel gmp-devel gawk bison flex texinfo patchutils gcc gcc-c++ zlib-devel expat-devel
