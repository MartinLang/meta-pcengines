FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://hostapd.conf"
SRC_URI += "file://hostapd-24.conf"

do_install_append() {
    rm ${D}${sysconfdir}/hostapd.conf

    # use 5GHz config by default
    install -m 0644 ${WORKDIR}/hostapd.conf ${D}${sysconfdir}
    install -m 0644 ${WORKDIR}/hostapd-24.conf ${D}${sysconfdir}
}

SYSTEMD_AUTO_ENABLE_${PN} = "enable"
