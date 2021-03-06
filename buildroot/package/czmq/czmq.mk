#############################################################
#
# czmq
#
#############################################################

CZMQ_VERSION = cb9839cf90
CZMQ_SITE = git://github.com/zeromq/czmq.git

# Autoreconf required as we use the git tree
CZMQ_AUTORECONF = YES
CZMQ_INSTALL_STAGING = YES
CZMQ_DEPENDENCIES = zeromq
CZMQ_LICENSE = LGPLv3+ with exceptions
CZMQ_LICENSE_FILES = COPYING COPYING.LESSER

define CZMQ_CREATE_CONFIG_DIR
	mkdir -p $(@D)/config
endef

CZMQ_POST_PATCH_HOOKS += CZMQ_CREATE_CONFIG_DIR

$(eval $(autotools-package))
