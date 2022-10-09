DEFAULTTUNE ?= "dbft1"

require conf/machine/include/x86/arch-x86.inc
require conf/machine/include/x86/x86-base.inc

# AMD DB-FT1 64bit (Brazos)
TUNEVALID[dbft1] = "Enable AMD DB-FT1 (64 bit) specific processor optimizations"
TUNECONFLICTS[dbft1] = "m32 mx32"
TUNE_CCARGS .= "${@bb.utils.contains("TUNE_FEATURES", "dbft1", " -march=btver1", "", d)}"

# Extra tune selections
AVAILTUNES += "dbft1"
TUNE_FEATURES:tune-dbft1 = "m64 dbft1"
BASE_LIB:tune-dbft1 = "lib64"
TUNE_PKGARCH:tune-dbft1 = "dbft1"
PACKAGE_EXTRA_ARCHS:tune-dbft1 = "${TUNE_PKGARCH:tune-dbft1}"
