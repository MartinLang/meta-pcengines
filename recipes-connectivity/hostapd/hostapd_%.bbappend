FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://hostapd.conf"
SRC_URI += "file://hostapd-ac.conf"

do_install_append() {
    rm ${D}${sysconfdir}/hostapd.conf
    install -m 0644 ${WORKDIR}/hostapd.conf ${D}${sysconfdir}
    install -m 0644 ${WORKDIR}/hostapd-ac.conf ${D}${sysconfdir}
}

SYSTEMD_AUTO_ENABLE_${PN} = "enable"
