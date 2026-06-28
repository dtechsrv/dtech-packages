# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-2020 Team LibreELEC (https://libreelec.tv)
# Copyright (C) 2021-present Gabor Dee (dee.gabor@gmail.com)

PKG_NAME="aml-vnc"
PKG_VERSION="1.4.0_rc2"
PKG_SHA256="784c164c25c1866b6856fca96bc119543f239ce74b5c91dc48a12199d159a275"
PKG_REV="0~rc-2"
PKG_ARCH="arm aarch64"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/dtechsrv/aml-vnc-server/"
PKG_URL="https://github.com/dtechsrv/aml-vnc-server/archive/${PKG_VERSION}.tar.gz"
PKG_MAINTAINER="dtech(.hu)"
PKG_DEPENDS_TARGET="toolchain libvncserver libdrm"
PKG_SECTION="service"
PKG_SHORTDESC="Amlogic VNC server"
PKG_LONGDESC="Amlogic VNC server is a Virtual Network Computing (VNC) server for Amlogic devices"

PKG_IS_ADDON="yes"
PKG_ADDON_PROJECTS="Amlogic"
PKG_ADDON_NAME="Amlogic VNC Server"
PKG_ADDON_TYPE="xbmc.service"

makeinstall_target() {
  :
}

addon() {
  mkdir -p ${ADDON_BUILD}/${PKG_ADDON_ID}/bin
  cp -P ${PKG_BUILD}/aml-vnc ${ADDON_BUILD}/${PKG_ADDON_ID}/bin

  mkdir -p ${ADDON_BUILD}/${PKG_ADDON_ID}/lib
  cp $(get_build_dir libvncserver)/.${TARGET_NAME}/libvncserver.so.? ${ADDON_BUILD}/${PKG_ADDON_ID}/lib
}
