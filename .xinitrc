#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

if [systemd-detect-virt = "oracle"];
	/usr/bin/VBoxClient-all
fi

sxhkd -c "$HOME"/.config/berry/sxhkdrc &
exec berry -d -f 'Dina-9' > /tmp/log.txt 2>&1
exec berry -c ~/.config/berry/berryrc

dunst -config "$HOME/.config/dunst/dunstrc" &
picom -config "$HOME"/babyjesus/picom.conf &
run volumeicon &

xset dpms 0 0 0 &
picom &
numlockx on &
rofi &
