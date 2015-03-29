EXTRA_DIST = \
	evopop-gtk-theme \
	evopop-light-gtk-theme \
	CREDITS \
	LICENSE \
	README.md

xsessiondir = $(datadir)/xsessions

themedir = $(datadir)/themes

install-data-hook:
	$(MKDIR_P) $(DESTDIR)/usr/share/themes
	cp -Rv evopop-gtk-theme $(DESTDIR)/usr/share/themes/.
	cp -Rv evopop-light-gtk-theme $(DESTDIR)/usr/share/themes/.

uninstall-hook:
	test -e $(DESTDIR)/usr/share/themes/evopop-gtk-theme && rm -rfv $(DESTDIR)/usr/share/themes/evopop-gtk-theme
	test -e $(DESTDIR)/usr/share/themes/evopop-light-gtk-theme && rm -rfv $(DESTDIR)/usr/share/themes/evopop-light-gtk-theme
