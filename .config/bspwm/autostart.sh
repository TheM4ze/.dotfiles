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

#blurwal
blurwal --m 1 &

#borders [inner+outer]
/home/babyjesus/.config/bspwm/borders &

#feh wallpaper
feh --no-fehbg --bg-fill

xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &


run pamac-tray &
run xfce4-power-manager &
numlockx on &
picom --config $HOME/.config/bspwm/picom.conf &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
run volumeicon &
run firefox &
run dunst &
