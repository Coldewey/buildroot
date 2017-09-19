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

$(eval $(generic-package))
