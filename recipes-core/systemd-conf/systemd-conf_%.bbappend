FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
   file://br0.netdev \
   file://br0.network \
   file://br1.netdev \
   file://br1.network \
   file://br2.netdev \
   file://br2.network \
   file://lan0.network \
"

FILES:${PN} += " \
    ${sysconfdir}/systemd/network/br0.netdev \
    ${sysconfdir}/systemd/network/br0.network \
    ${sysconfdir}/systemd/network/br1.netdev \
    ${sysconfdir}/systemd/network/br1.network \
    ${sysconfdir}/systemd/network/br2.netdev \
    ${sysconfdir}/systemd/network/br2.network \
    ${sysconfdir}/systemd/network/lan0.network \
"

do_install:append() {
    install -d ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/br0.netdev ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/br0.network ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/br1.netdev ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/br1.network ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/br2.netdev ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/br2.network ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/lan0.network ${D}${sysconfdir}/systemd/network
}
