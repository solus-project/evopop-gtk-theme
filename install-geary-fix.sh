#!/bin/bash
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 4 -*-
#
# Authors:
#   Sam Hewitt <sam@snwh.org>
#   Peter Cornelis <poltertec@gmail.com>
#
# Description:
#   An installation bash script for EvoPop GTK Theme
#
# Legal Stuff:
#
# This file is part of the EvoPop GTK Theme and is free software; you can redistribute it and/or modify it under
# the terms of the GNU Lesser General Public License as published by the Free Software
# Foundation; version 3.
#
# This file is part of the EvoPop GTK Theme and is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for more
# details.
#
# You should have received a copy of the GNU General Public License along with
# this program; if not, see <https://www.gnu.org/licenses/lgpl-3.0.txt>

clear
echo '#----------------------------------------#'
echo '#     Geary Theme Fix Install Script     #'
echo '#----------------------------------------#'


show_question() {
echo -e "\033[1;34m$@\033[0m"
}

show_dir() {
echo -e "\033[1;32m$@\033[0m"
}

show_error() {
echo -e "\033[1;31m$@\033[0m"
}

function main {
if [ "$UID" -eq "$ROOT_UID" ]; then
	if [ -d /usr/share/geary ]; then
		echo
		show_question '\tThis will replace the original Geary theming. \n\tDo you wish to Continue? (Y)es, (N)o : '
		echo
		read INPUT
		case $INPUT in
			[Yy]* ) rm -Rf /usr/share/geary/theming/message-viewer.css;;
			[Nn]* ) end;;
		    * ) clear; show_error '\tSorry, try again.'; main;;
		esac
	else
		echo "Geary is not installed on this system"
		end
	fi
	echo "Installing..."
	cp -R ./geary/theming/message-viewer.css /usr/share/geary/theming/
	chmod -R 755 /usr/share/geary/theming
	echo "Installation complete!"
	end
	set
fi
}

function end {
	echo "Exiting"
	exit 0
}

ROOT_UID=0
if [ "$UID" -ne "$ROOT_UID" ]; then
	echo
	echo  "Please run this script as root."
	end
else
	echo
	echo "This will be available to all users."
	main
fi
