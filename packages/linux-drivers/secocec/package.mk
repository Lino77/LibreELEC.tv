################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2018-present Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="secocec"
PKG_VERSION="364058c36fa11d7c4f539e6fb35a65acfad405de"
PKG_SHA256="52b14a0bf757c39bc2739f6887da43075ff810d9f8d57b24b2958282ef4d159f"
PKG_ARCH="x86_64"
PKG_LICENSE="GPLv2/BSD"
PKG_SITE="https://github.com/ektor5/secocec/"
PKG_URL="https://github.com/ektor5/secocec/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain linux v4l-utils"
PKG_NEED_UNPACK="$LINUX_DEPENDS"
PKG_SECTION="driver"
PKG_SHORTDESC="CEC driver for udoo x86 boards"
PKG_LONGDESC="CEC driver for udoo x86 boards"
PKG_IS_KERNEL_PKG="yes"

pre_make_target() {
  unset LDFLAGS
}

make_target() {
  make KERNELDIR=$(kernel_path)
}

makeinstall_target() {
  mkdir -p $INSTALL/$(get_full_module_dir)/$PKG_NAME
    cp *.ko $INSTALL/$(get_full_module_dir)/$PKG_NAME
}
