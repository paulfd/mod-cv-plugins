######################################
#
# mod-cv-switch1
#
######################################

# where to find the source code - locally in this case
MOD_CV_SWITCH1_SITE_METHOD = local
MOD_CV_SWITCH1_SITE = $($(PKG)_PKGDIR)/

# even though this is a local build, we still need a version number
# bump this number if you need to force a rebuild
MOD_CV_SWITCH1_VERSION = 1

# dependencies (list of other buildroot packages, separated by space)
MOD_CV_SWITCH1_DEPENDENCIES =

# LV2 bundles that this package generates (space separated list)
MOD_CV_SWITCH1_BUNDLES = mod-cv-switch1.lv2

# call make with the current arguments and path. "$(@D)" is the build directory.
MOD_CV_SWITCH1_TARGET_MAKE = $(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D)/source


# build command
define MOD_CV_SWITCH1_BUILD_CMDS
	$(MOD_CV_SWITCH1_TARGET_MAKE)
endef

# install command
define MOD_CV_SWITCH1_INSTALL_TARGET_CMDS
	$(MOD_CV_SWITCH1_TARGET_MAKE) install DESTDIR=$(TARGET_DIR)
endef


# import everything else from the buildroot generic package
$(eval $(generic-package))
