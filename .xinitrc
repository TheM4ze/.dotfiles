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


blurwal -m 1 &

sxhkd -c "$HOME"/.config/berry/sxhkdrc &
exec berry -d -f 'Dina-9' > /tmp/log.txt 2>&1

dunst -config "$HOME/.config/dunst/dunstrc" &
polybar -config "$HOME/.config/polybar/launch.sh" &
rofi -config "$HOME/.config/rofi/config" &


xsetroot -cursor_name left_ptr &
run pamac-tray &
/home/babyjesus/.config/autostart/Power Manager &
numlockx on &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
run volumeicon &
