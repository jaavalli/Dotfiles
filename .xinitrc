xsetroot -cursor_name left_ptr
[ -f ~/.xprofile ] && source ~/.xprofile
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
/home/ville/bin/keys

compton --config ~/compton.conf -b
dropboxd & 
owncloud &
#davmail &
xset -b
#~/Koodia/Scripts/detectdisp
# Hide mouse cursor when not needed
unclutter &
keynav &
#Fix spotify search bar bg color
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /MainWindow org.qtproject.Qt.QApplication.setStyleSheet string:"QLineEdit { background-color: #fff }" &
exec i3

