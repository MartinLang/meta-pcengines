FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

RRECOMMENDS_${PN} += " kernel-module-xt-addrtype"

SRC_URI += "file://docker-storage.conf"

do_install_append() {
  install -d -m 0755 ${D}/${sysconfdir}/systemd/system/docker.service.d
  install -m 0644 ${WORKDIR}/docker-storage.conf ${D}/${sysconfdir}/systemd/system/docker.service.d
  install -d -m 0755 ${D}${PERSISTENT_DATA_DIR}/docker
}

FILES_${PN} += "${PERSISTENT_DATA_DIR}/docker"
