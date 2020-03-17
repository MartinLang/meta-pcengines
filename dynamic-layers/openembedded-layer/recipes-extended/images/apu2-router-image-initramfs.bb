require dynamic-layers/openembedded-layer/recipes-extended/images/apu2-image-initramfs.bb

IMAGE_FSTYPES = "cpio.gz"

IMAGE_INSTALL_append = " \
    crda \
    hostapd \
    iperf3 \
    iw \
    linux-firmware-ath9k \
    linux-firmware-ath10k \
    "
