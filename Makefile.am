EXTRA_DIST = \
	evopop-gtk-theme \
	CREDITS \
	LICENSE \
	README.md

xsessiondir = $(datadir)/xsessions

themedir = $(datadir)/themes

install-data-hook:
	$(MKDIR_P) $(DESTDIR)$(themedir)
	cp -Rv evopop-gtk-theme $(DESTDIR)$(themedir)/.

uninstall-hook:
	test -e $(DESTDIR)$(themedir)/evopop-gtk-theme && rm -rfv $(DESTDIR)$(themedir)/evopop-gtk-theme
