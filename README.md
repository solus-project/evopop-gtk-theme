EvoPop Theme
============

EvoPop is a modern desktop theme suite. Its design is mostly flat with a minimal use of shadows for depth.
Requires Gtk 3.20 to function properly.
The theme is primarily build for the Solus Project, this means I can only provide Budgie, Mate and Gnome support.

EvoPop is distributed under the terms the GNU General Public License (GNU GPL v.3).

### Supported Desktop Environments

* Budgie-Desktop
* Gnome-Shell
* Mate

### Getting EvoPop

You can download the EvoPop theme [here](https://github.com/solus-cold-storage/evopop-gtk-theme).

### Building EvoPop

You can build and install the EvoPop GTK theme from source:

    ./autogen.sh
    make
    sudo make install

This procedure requires ```autotools``` on your system.

### Installing EvoPop

Alternatively you may install EvoPop with the provided installation scripts:

    ./install-gtk-theme.sh
    ./install-gtk-azure-theme.sh

### Geary Fix

For those of you who run Geary, there is a common problem where it uses the active font color for regular buttons. Which makes them unreadable.
This bash file makes a decent workaround (which is also fine to use for other themes)

    ./install-geary-fix.sh

-----------
