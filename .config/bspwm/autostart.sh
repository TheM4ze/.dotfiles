#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#autostart
/home/babyjesus/.config/polybar/launch.sh
xrdb ~/.Xresources

#sxhkd
run sxhkd -c ~/.config/sxhkd/sxhkdrc &

#picom
picom --config $HOME/.config/picom.conf &

#blurwal
blurwal --m 1 &

#borders [inner+outer]
#/home/babyjesus/.config/bspwm/borders &

#feh wallpaper
feh --no-fehbg --bg-fill

xsetroot -cursor_name left_ptr &
run pamac-tray &
run xfce4-power-manager &
numlockx on &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
run volumeicon &
run firefox &
run dunst &
