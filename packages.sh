#!/usr/bin/env bash

install_packages() {
	echo -e "\nInstalling packages for Arch Linux...\n"

	packages=(
		"xorg-server"
		"xorg-xinit"
		"xorg-xrandr"
		"xorg-xsetroot"
		"xorg-xbacklight"
		"xf86-video-intel"
		"xf86-input-libinput"
		"mesa"
		"man-db"
		"man-pages"
		"texinfo"
		"imagemagick"
		"alsa-utils"
		"alsa-lib"
		"pulseaudio"
		"pamixer"
		"dmenu"
		"dunst"
		"w3m"
		"picom"
		"hsetroot"
		"surf"
		"firefox"
		"gimp"
		"inkscape"
		"gtop"
		"ranger"
		"neofetch"
		"scrot"
		"zip"
		"unzip"
		"p7zip"
		"openssh"
		"python-pip"
		"python-pillow"
		"jshon"
		"jq"
		"noto-fonts-emoji"
		"gnu-netcat"
		"tree"
	)

	sudo pacman -Syu "${packages[@]}"

	echo -e "DONE.\n"
}

install_packages
