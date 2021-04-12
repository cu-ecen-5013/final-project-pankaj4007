
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

AESD_ASSIGNMENTS_VERSION = 'd5937b72e536c7ad060024a5c62b806719b439bd'
AESD_ASSIGNMENTS_SITE = 'git@github.com:cu-ecen-5013/final-project-adityavarshney100.git'
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesdclient $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/aesdserver $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/client_test $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/server_test $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/uart_test $(TARGET_DIR)/bin

endef

$(eval $(generic-package))
