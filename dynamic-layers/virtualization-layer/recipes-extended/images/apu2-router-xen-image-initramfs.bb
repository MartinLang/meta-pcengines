require dynamic-layers/virtualization-layer/recipes-extended/images/xen-dom0-image.bb

IMAGE_FSTYPES += "cpio.gz"

IMAGE_INSTALL_append = " \
    packagegroup-apu2-tpm2 \
    packagegroup-apu2-router \
    "
