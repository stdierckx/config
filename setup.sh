#!/bin/bash

echo "Thalos dev environment installer " && sleep 5
echo "Installing Dependencies ... "

apt install bspwm sxhkd rofi zsh

echo "Copying config ... "

cp -r bspwm ~/.config
cp -r sxhkd ~/.config

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc

cp -r wallpapers/ ~/.wallpapers
