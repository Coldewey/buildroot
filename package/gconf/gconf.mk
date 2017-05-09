#############################################################
#
# GConf
#
#############################################################

GCONF_VERSION = 3.2.0
GCONF_SOURCE = GConf-$(GCONF_VERSION).tar.xz
GCONF_SITE = http://ftp.gnome.org/pub/gnome/sources/GConf/3.2/
GCONF_DEPENDENCIES = dbus-glib libxml2
GCONF_INSTALL_STAGING = YES
GCONF_CONF_OPT += --sysconfdir=/etc --libexecdir=/usr/lib/GConf --disable-orbit
GCONF_LICENSE = GPLv2
GCONG_LICENSE_FILE = COPYING

define GCONF_INSTALL_TARGET_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D) DESTDIR=$(TARGET_DIR) install

	(cd $(@D); \
	install -v -m755 -d $(TARGET_DIR)/etc/gconf/gconf.xml.system)

endef

$(eval $(autotools-package))
