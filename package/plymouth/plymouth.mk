################################################################################
#
# plymouth
#
################################################################################

PLYMOUTH_VERSION = 0.9.3
PLYMOUTH_SITE = https://www.freedesktop.org/software/plymouth/releases
PLYMOUTH_SOURCE = plymouth-$(PLYMOUTH_VERSION).tar.xz
PLYMOUTH_LICENSE = plymouth license
PLYMOUTH_LICENSE_FILES = COPYING

PLYMOUTH_DEPENDENCIES = host-pkgconf libpng udev libgtk3

$(eval $(autotools-package))
