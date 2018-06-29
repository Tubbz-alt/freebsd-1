export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export GDK_SCALE=1
export GDK_DPI_SCALE=0.5
xrdb -merge .Xresources
exec /home/donovan/.local/bin/wal -R & 
exec /home/donovan/.config/i3/dunst.sh &
xrandr --dpi 220 &
exec /home/donovan/dwm-status.sh &
exec compton -cCGb &
exec xautolock -time 20 -locker slock &
exec setxkbmap -model pc105 -layout us,ar,gr,ru -variant ,qwerty_digits,, -option grp:rctrl_rshift_toggle &
exec /home/donovan/dwm/dwm
