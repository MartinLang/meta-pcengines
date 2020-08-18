inherit packagegroup

PACKAGES = "${PN}"

RDEPENDS_${PN} = " \
    tpm2-tools \
    tpm2-tss \
    libtss2 \
    libtss2-mu \
    libtss2-tcti-device \
    tpm2-abrmd \
    tpm2-pkcs11 \
    cryptsetup-tpm-incubator \
"
