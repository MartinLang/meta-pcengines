require recipes-core/images/core-image-minimal.bb

IMAGE_INSTALL_append = " \
  flashrom \
  gnupg \
  kernel-modules \
  wget \
  ca-certificates \
  "

IMAGE_FEATURES_append = " ssh-server-openssh"
