require recipes-extended/images/apu2-image-initramfs.bb

IMAGE_FSTYPES += "cpio.gz"

IMAGE_INSTALL_append = " \
    packagegroup-apu2-router \
    "
