xsetroot -cursor_name left_ptr
[ -f ~/.xprofile ] && source ~/.xprofile
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
$HOME/Scripts/keys

compton --config ~/compton.conf -b
dropbox & 
#davmail &
xset -b
#~/Koodia/Scripts/detectdisp
# Hide mouse cursor when not needed
# unclutter &
keynav &
xiset m 1/2 4
bash /usr/local/sbin/thinkpad-dock.sh
megasync &
exec i3
