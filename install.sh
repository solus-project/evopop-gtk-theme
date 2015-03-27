#!/bin/bash
VERSION="0.19"
THEME_PREFIX=/usr/share/themes/EvoPop
LIGHT_THEME_PREFIX=/usr/share/themes/EvoPop-light

echo "Installing..."
[ -d "$THEME_PREFIX" ] && sudo rm -rf $THEME_PREFIX
sudo mkdir -pv "$THEME_PREFIX" && sudo cp -rf evopop-gtk-theme/* "$THEME_PREFIX"
[ -d "$LIGHT_THEME_PREFIX" ] && sudo rm -rf $LIGHT_THEME_PREFIX
sudo mkdir -pv "$LIGHT_THEME_PREFIX" && sudo cp -rf evopop-light-gtk-theme/* "$LIGHT_THEME_PREFIX"
echo "EvoPop $VERSION installation successful"