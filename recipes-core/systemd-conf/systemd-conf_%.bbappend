FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
   file://10-br0.netdev \
   file://10-br0.network \
   file://10-br1.netdev \
   file://10-br1.network \
   file://10-br2.netdev \
   file://10-br2.network \
   file://15-lan0.network \
   file://15-lan1.network \
"

FILES:${PN} += " \
    ${sysconfdir}/systemd/network/10-br0.netdev \
    ${sysconfdir}/systemd/network/10-br0.network \
    ${sysconfdir}/systemd/network/10-br1.netdev \
    ${sysconfdir}/systemd/network/10-br1.network \
    ${sysconfdir}/systemd/network/10-br2.netdev \
    ${sysconfdir}/systemd/network/10-br2.network \
    ${sysconfdir}/systemd/network/15-lan0.network \
    ${sysconfdir}/systemd/network/15-lan1.network \
"

do_install:append() {
    install -d ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/10-br0.netdev ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/10-br0.network ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/10-br1.netdev ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/10-br1.network ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/10-br2.netdev ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/10-br2.network ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/15-lan0.network ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/15-lan1.network ${D}${sysconfdir}/systemd/network
}
