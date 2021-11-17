#!/bin/bash

echo "Thalos dev environment installer " && sleep 5
echo "Installing Dependencies ... "

apt install bspwm sxhkd rxvt-unicode feh rofi zsh curl

echo "Copying config ... "

cp -r bspwm ~/.config
cp -r sxhkd ~/.config
cp .Xresources ~

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc

cp -r wallpapers/ ~/.wallpapers


 sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

 sudo snap install spotify
