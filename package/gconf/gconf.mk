#############################################################
#
# GConf
#
#############################################################

GCONF_MAJOR_VERSION = 3.2
GCONF_MINOR_VERSION = 0
GCONF_VERSION = $(GCONF_MAJOR_VERSION).$(GCONF_MINOR_VERSION)
GCONF_SOURCE = GConf-$(GCONF_VERSION).tar.xz
GCONF_SITE = http://ftp.gnome.org/pub/gnome/sources/GConf/3.2
GCONF_DEPENDENCIES = dbus-glib host-intltool libxml2
GCONF_INSTALL_STAGING = YES
GCONF_CONF_OPTS += --sysconfdir=/etc --libexecdir=/usr/lib/GConf --disable-orbit
GCONF_LICENSE = GPLv2
GCONG_LICENSE_FILE = COPYING

define GCONF_POST_INSTALL
	$(INSTALL) -v -m755 -d $(TARGET_DIR)/etc/gconf/gconf.xml.system)
endef

GCONF_POST_INSTALL_TARGET_HOOKS += GCONF_POST_INSTALL

$(eval $(autotools-package))
