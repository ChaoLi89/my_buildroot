
# Use git as source of source code
# PKG_VERSION = ChaoL/T2x_upgrade           
# PKG_SITE = ssh://ggltfs.local.gallagher.io:22/tfs/Gallagher/CardaxFT/_git/HBusDevices
# PKG_SITE_METHOD = git
# PKG_INSTALL_STAGING = NO

# Use local directory as source
# PKG_SITE = /home/chao/work/HBusDevices-2
# PKG_SITE_METHOD = local
# PKG_DEPENDENCIES = libopenssl libevent qt
# PKG_INSTALL_STAGING = NO

# Use tarball as the source
# PKG_VERSION = 1.4.33
# PKG_SOURCE = PKG-$(PKG_VERSION).tar.xz
# PKG_SITE = http://download.PKG.net/PKG/releases-1.4.x
# PKG_LICENSE = BSD-3c
# PKG_LICENSE_FILES = COPYING
# PKG_DEPENDENCIES = host-pkgconf

# Use local directory as source
TEST_GENERIC_PKG_SITE = $(EXTERNAL_NETRADAR_SOURCE_PATH)/test-generic
TEST_GENERIC_PKG_SITE_METHOD = local
TEST_GENERIC_PKG_DEPENDENCIES =
TEST_GENERIC_PKG_INSTALL_STAGING = NO

# $(info test message)
# $(info TARGET_CROSS is $(TARGET_CROSS))
# $(info TARGET_CC is $(TARGET_CC))
# $(info TARGET_CXX is $(TARGET_CXX))
# $(info TARGET_CFLAGS is $(TARGET_CFLAGS))
# $(info TARGET_CXXFLAGS is $(TARGET_CXXFLAGS))
# $(info TARGET_LDFLAGS is $(TARGET_LDFLAGS))
# # $(info TARGET_MAKE_ENV is $(TARGET_MAKE_ENV))
# $(info STAGING_DIR is $(STAGING_DIR))
# $(info TARGET_DIR is $(TARGET_DIR))
# $(info STAGING_DIR_TARGET is $(STAGING_DIR_TARGET))
# $(info TESTPKG_DIR is $(TESTPKG_DIR))
# $(info BUILD_DIR is $(BUILD_DIR))

# $(info TARGET_SYSROOT is $(TARGET_SYSROOT))
# $(info HOSTCC is $(HOSTCC))

# $(info HOST_CFLAGS is $(HOST_CFLAGS))

# $(info HOSTCXX is $(HOSTCXX))
# $(info HOST_CXXFLAGS is $(HOST_CXXFLAGS))

# $(info TARGET_AR is $(TARGET_AR))
# $(info TARGET_STRIP is $(TARGET_STRIP))
# $(info HOSTLD is $(HOSTLD))
# $(info SYSROOT  is $(SYSROOT ))
# $(info PKG_CONFIG is $(PKG_CONFIG))
# $(info TOPDIR is $(TOPDIR))
# $(info HOST_CXOXFLAGS is $(O))
# $(info BR2_CONFIG is $(BR2_CONFIG))
# $(info FOO_CONF_OPTS is $(TARGET_CONF_OPTS))



define TEST_GENERIC_PKG_BUILD_CMDS
	cd $(@D) && \
    $(TARGET_CXX) main.cpp -o test-generic
endef

define HOST_TEST_GENERIC_PKG_BUILD_CMDS
	cd $(@D) && \
    $(HOSTCXX) main.cpp -o test-generic
endef

define HOST_TEST_GENERIC_PKG_INSTALL_CMDS
	$(INSTALL) -D -m 0755 $(@D)/test-generic $(HOST_DIR)/bin/test-generic
endef

 $(eval $(generic-package))
 $(eval $(host-generic-package))