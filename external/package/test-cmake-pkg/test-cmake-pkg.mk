
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
TEST_CMAKE_PKG_SITE = $(EXTERNAL_NETRADAR_SOURCE_PATH)/test-cmake
TEST_CMAKE_PKG_SITE_METHOD = local
TEST_CMAKE_PKG_DEPENDENCIES =
TEST_CMAKE_PKG_INSTALL_STAGING = NO

#HOST_TEST_CMAKE_PKG_INSTALL_OPTS = --prefix /home/chao

$(eval $(cmake-package)) # use 'make test-cmake-pkg-build' to build target version
$(eval $(host-cmake-package)) # use make host-test-cmake-pkg-build to build host version