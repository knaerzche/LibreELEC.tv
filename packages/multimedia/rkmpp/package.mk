# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2017-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="rkmpp"
PKG_VERSION="fefa75939d51f32a70684c5106bd2b28715b4756"
PKG_SHA256="a4174aa5939a389abf600257eaea970a98fe2fdc7bf5a9440db3fc837936a740"
PKG_ARCH="arm aarch64"
PKG_LICENSE="APL"
PKG_SITE="https://github.com/HermanChen/mpp"
PKG_URL="https://github.com/HermanChen/mpp/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain libdrm"
PKG_LONGDESC="rkmpp: Rockchip Media Process Platform (MPP) module"

if [ "$DEVICE" = "RK3328" -o "$DEVICE" = "RK3399" -o "$DEVICE" = "RK322x" ]; then
  PKG_ENABLE_VP9D="ON"
else
  PKG_ENABLE_VP9D="OFF"
fi

PKG_CMAKE_OPTS_TARGET="-DENABLE_VP9D=$PKG_ENABLE_VP9D \
                       -DHAVE_DRM=ON"
