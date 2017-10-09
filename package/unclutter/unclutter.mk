################################################################################
#
# unclutter
#
################################################################################

UNCLUTTER_VERSION = 1.09
UNCLUTTER_SOURCE = unclutter-$(UNCLUTTER_VERSION).tar.gz
UNCLUTTER_SITE = https://downloads.sourceforge.net/project/unclutter/unclutter/source_$(UNCLUTTER_VERSION)
#https://downloads.sourceforge.net/project/unclutter/unclutter/source_1.09/unclutter-1.09.tar.gz?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Funclutter%2Ffiles%2F&ts=1505824017&use_mirror=netix
UNCLUTTER_DEPENDENCIES = xlib_libX11
UNCLUTTER_LICENSE_FILES = README

define UNCLUTTER_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define UNCLUTTER_INSTALL_STAGING_CMDS
	$(INSTALL) -D -m 0755 $(@D)/unclutter $(STAGING_DIR)/usr/bin/unclutter
endef

define UNCLUTTER_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/unclutter $(TARGET_DIR)/usr/bin/unclutter
endef

$(eval $(generic-package))
