
$(info test message)
$(info TARGET_CROSS is $(TARGET_CROSS))
$(info TARGET_CC is $(TARGET_CC))
$(info TARGET_CXX is $(TARGET_CXX))
$(info TARGET_CFLAGS is $(TARGET_CFLAGS))
$(info TARGET_LDFLAGS is $(TARGET_LDFLAGS))
$(info TARGET_MAKE_ENV is $(TARGET_MAKE_ENV))
$(info STAGING_DIR is $(STAGING_DIR))
$(info STAGING_DIR_TARGET is $(STAGING_DIR_TARGET))
$(info TESTPKG_DIR is $(PKG_DIR))
$(info BUILD_DIR is $(BUILD_DIR))

$(info TARGET_SYSROOT is $(TARGET_SYSROOT))
$(info HOSTCC is $(HOSTCC))

$(info HOST_CFLAGS is $(HOST_CFLAGS))

$(info TARGET_SYSROOT is $(TARGET_SYSROOT))
$(info TARGET_SYSROOT is $(TARGET_SYSROOT))


$(eval $(generic-package))
