require conf/distro/poky.conf

DISTRO_NAME = "Reference Yocto distro for PC Engines hardware"
DISTRO_VERSION = "0.1"
SDK_VENDOR = "-pcesdk"
TARGET_VENDOR = "-pce"

MAINTAINER = "maciej.pijanowski@3mdeb.com"

DISTRO_FEATURES = " \
    ext2 \
    keyboard \
    largefile \
    ldconfig \
    nfs \
    pci \
    systemd \
    usbgadget \
    usbhost \
    virtualization \
"

# disable sysvinit
VIRTUAL-RUNTIME_init_manager = "systemd"
VIRTUAL-RUNTIME_initscripts = ""
VIRTUAL-RUNTIME_syslog = ""
DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"

PREFERRED_VERSION_linux-yocto ?= "4.19%"

# persistent data directory to use in recipes
PERSISTENT_DATA_DIR = "/data"

IMAGE_FSTYPES = "wic.gz wic.bmap"
WKS_FILE = "grub-legacy-dual-image.wks"

# pass extra args to wic to allow splitting out data directory from rootfs
WIC_CREATE_EXTRA_ARGS = "\
    --rootfs-dir rootfs-main=${IMAGE_ROOTFS} \
    --rootfs-dir rootfs-data=${IMAGE_ROOTFS}${PERSISTENT_DATA_DIR} \
    "
