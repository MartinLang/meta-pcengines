require recipes-core/images/core-image-minimal.bb

IMAGE_INSTALL_append = " \
  flashrom \
  gnupg \
  kernel-modules \
  wget \
  ca-certificates \
  kernel-modules \
  "

IMAGE_FEATURES_append = " ssh-server-openssh"
