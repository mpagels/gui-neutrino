installdir = $(PRIVATE_HTTPDDIR)/scripts

install_SCRIPTS = \
	api.sh \
	_Y_Globals.sh \
	_Y_Library.sh \
	Y_Live.sh \
	Y_Tools.sh

# file manager
install_SCRIPTS += \
	Y_NAS.sh

install-data-hook:
	chmod 0755 $(DESTDIR)$(PRIVATE_HTTPDDIR)/scripts/api.sh
	chmod 0755 $(DESTDIR)$(PRIVATE_HTTPDDIR)/scripts/Y_*.sh
