SUMMARY = "APU2 router - systemd bridge configuration"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

SRC_URI = " \
    file://10-br0.netdev \
    file://10-bridge-ethernet.network \
    file://10-eth-lan.network \
    file://10-eth-wan.network \
"

do_install() {
    install -d ${D}${sysconfdir}/systemd/network

    install -m 0644 ${WORKDIR}/*.network ${D}${sysconfdir}/systemd/network/
    install -m 0644 ${WORKDIR}/*.netdev ${D}${sysconfdir}/systemd/network/
}
