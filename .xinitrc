#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#Set display
xrandr --output eDP1 --mode 1920x1080 --rate 144.03 &

#Gestures
touchegg &

# clipmeu knows which X server to use
systemctl --user import-environment DISPLAY &
clipmenud &

#Polkit
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

#Compositor
picom &

# Wallpaper
nitrogen --set-zoom-fill --random $HOME/Suckless/backgrounds

#Set keymaps
setxkbmap -layout "us,ru" -option "grp:toggle" &

# slstatus
slstatus &

#Loop
while true ; do
	dwm>/dev/null 2>&1
done

#DWM
exec dwm
