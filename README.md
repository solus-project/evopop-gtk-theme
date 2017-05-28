EvoPop Theme
============

EvoPop is a modern desktop theme suite. Its design is mostly flat with a minimal use of shadows for depth.
After a year of absence the theme has been revamped with Paper theme as a base.
Requires Gtk 3.22 to function properly.

EvoPop has been developed primarily with modern GTK3 (GNOME-based) desktop environments in mind, legacy-toolkit and GTK2 environments will not provide an ideal experience, as much of the visual design relies on modern GTK3+ widgets.

EvoPop is distributed under the terms the GNU General Public License (GNU GPL v.3).

### Getting EvoPop

You can download the EvoPop [here](https://github.com/solus-cold-storage/evopop-gtk-theme).

### Building EvoPop

You can build and install the EvoPop GTK theme from source:

    ./autogen.sh
    make
    sudo make install

This procedure requires ```autotools``` on your system.

### Installing EvoPop

Alternatively you may install EvoPop with the provided installation script:

    ./install-gtk-theme.sh

### Geary Fix

For those of you who run Geary, there is a common problem where it uses the active font color for regular buttons. Which makes them unreadable.
This bash file makes a decent workaround (which is also fine to use for other themes)

    ./install-geary-fix.sh

-----------
