PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"

MULTILIBS ?= ""
require conf/multilib.conf

# Add serial consoles to kernel commandline
SERIAL_CONSOLES = "115200;ttyUSB0"
KERNEL_SERIAL_CONSOLE ??= "console=ttyS0,115200n8"
APPEND += "${KERNEL_SERIAL_CONSOLE}"


MACHINEOVERRIDES =. "amd:amdx86:pcengines-apux:"

XSERVER ?= "${XSERVER_X86_BASE} \
            ${XSERVER_X86_EXT} \
            ${XSERVER_X86_FBDEV} \
           "

PREFERRED_VERSION_linux-yocto = "5.10%"

MACHINE_FEATURES += " \
    rtc \
    pcbios \
    vfat \
    tpm \
    tpm2 \
    txt \
    ima \
"

MACHINE_EXTRA_RRECOMMENDS += " \
    kernel-modules \
    grub \
    parted \
    util-linux-blkid \
"

# QEMU does not support some of the enhanced instructions available
# on the AMD chips which causes some build time failures.
# Such as:
# NOTE: > Executing update_gio_module_cache intercept ...
# NOTE: Exit code 132. Output:
# Illegal instruction (core dumped)
MACHINE_FEATURES:remove = "qemu-usermode"

APPEND_ADDITIONAL ??= ""
APPEND += "${APPEND_ADDITIONAL}"

IMAGE_FSTYPES += "ext4 hddimg"

IMAGE_OVERHEAD_FACTOR = "1.1"

KERNEL_IMAGETYPE = "bzImage"

KERNEL_MODULE_AUTOLOAD_pce-xen += " \
    xen-netback \
    xen_wdt \
    xen-gntdev \
    xen-gntalloc \
    xen-acpi-processor \
    xen-pciback \
    xen-blkback \
"
