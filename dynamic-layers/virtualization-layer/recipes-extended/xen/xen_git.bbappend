LIC_FILES_CHKSUM = "file://COPYING;md5=4295d895d4b5ce9d070263d52f030e49"

# the 4.13-rc5 tag
XEN_BRANCH = "staging-4.13"
SRCREV = "ddccd9f87ef8accdff518dc2ebb64c05f55cd278"

FILES_${PN}-misc_append = " ${sbindir}/xen-ucode"
