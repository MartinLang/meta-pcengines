require recipes-extended/images/apu2-image-initramfs.bb

IMAGE_FSTYPES += "cpio.gz"

IMAGE_INSTALL_append = " \
    apu2-router-bridges \
    crda \
    dnsmasq \
    hostapd \
    iperf3 \
    iw \
    linux-firmware-ath10k \
    tpm2-tools \
    tpm2-abrmd \
    tpm2-tss \
    "
