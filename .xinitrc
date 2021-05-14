picom &
hsetroot -cover ~/Pictures/wallpaper.jpg &
while xsetroot -name "`date +\"%F %T\"`"
do
	sleep 1
done &
exec dwm
# exec gnome-session
