#exec startkde
exec i3
#exec i3 -V >> ~/i3log-$(date +'%F-%k-%M-%S') 2>&1
pgrep redshift &> /dev/null || redshift &> /dev/null &
imwheel

# Set background
feh --bg-fill ~/.config/i3/bg.jpg
xset mouse 1 1 &
