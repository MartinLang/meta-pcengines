FILESEXTRAPATHS:prepend := "${THISDIR}/linux-yocto:"

SRC_URI += " file://edac.cfg"

# base on generic config from:
# http://git.yoctoproject.org/cgit/cgit.cgi/yocto-kernel-cache/tree/bsp/common-pc-64/common-pc-64.scc?h=yocto-4.14
KMACHINE:pcengines-apu${APU_VERSION} = "common-pc-64"

# enable SMP
KERNEL_FEATURES:append:pcengines-apu${APU_VERSION} = " \
    cfg/smp_64.scc \
"

# disable graphics and Intel CPU/GPU support
SRC_URI:append:pcengines-apu${APU_VERSION} = " file://disable-graphics.cfg"

# enable realtek gigabit ethernet fpor APU1
SRC_URI:append:pcengines-apu1 = " file://realtek_eth.cfg"

KERNEL_FEATURES:remove:pcengines-apu${APU_VERSION} = " \
    cfg/intel.scc \
    features/i915/i915.scc \
    features/usb/touchscreen-composite.scc \
"

COMPATIBLE_MACHINE:pcengines-apu${APU_VERSION} = "pcengines-apu${APU_VERSION}"
