################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2014 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="gcc-linaro-arm-none-eabi"
PKG_VERSION="4.9-2014"
PKG_REV="1"
PKG_ARCH="arm"
PKG_LICENSE="GPL"
PKG_SITE="http://releases.linaro.org/archive"
PKG_URL="$PKG_SITE/14.09/components/toolchain/binaries/gcc-linaro-arm-none-eabi-$PKG_VERSION.09_linux.tar.xz"
PKG_SOURCE_DIR="gcc-linaro-arm-none-eabi-$PKG_VERSION.09_linux"
PKG_DEPENDS_HOST="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="lang"
PKG_SHORTDESC="Linaro GCC Compiler for ARM"
PKG_LONGDESC="Linaro GCC Compiler for ARM"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_host() {
  : # nothing to do
}

makeinstall_host() {
  rm -f share/aclocal/pkg.m4
  rm -r share/doc
  cp -PR * $TOOLCHAIN
}
