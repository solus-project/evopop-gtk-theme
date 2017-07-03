EXTRA_DIST = \
	EvoPop \
	EvoPop-Azure \
	LICENSE \
	AUTHORS \
	README.md


themedir = $(datadir)/themes

install-data-hook:
	$(MKDIR_P) $(DESTDIR)/usr/share/themes
	cp -Rv EvoPop $(DESTDIR)/usr/share/themes/.
	cp -Rv EvoPop-Azure $(DESTDIR)/usr/share/themes/.

uninstall-hook:
	test -e $(DESTDIR)/usr/share/themes/EvoPop && rm -rfv $(DESTDIR)/usr/share/themes/EvoPop
	test -e $(DESTDIR)/usr/share/themes/EvoPop-Azure && rm -rfv $(DESTDIR)/usr/share/themes/EvoPop-Azure
