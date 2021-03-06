#!/bin/bash

echo "Thalos dev environment installer " && sleep 5
echo "Installing Dependencies ... "

apt install bspwm sxhkd rxvt-unicode feh rofi zsh curl vim polybar

echo "Copying config ... "

cp -r bspwm /home/stephane/.config
cp -r sxhkd /home/stephane/.config
cp -r polybar /home/stephane/.config
cp -r .vim /home/stephane/
cp .Xresources /home/stephane

chmod +x /home/stephane/.config/bspwm/bspwmrc
chmod +x /home/stephane/.config/sxhkd/sxhkdrc
chmod +x /home/stephane/.config/polybar/launch.sh

cp -r wallpapers/ /home/stephane/.wallpapers


 sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

 sudo snap install spotify

git config --global user.email 'st.dierckx@gmail..com'
git config --global user.name stdierckx
git config --global credential.helper store

