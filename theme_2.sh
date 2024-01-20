#!/bin/bash

unzip plasmoids.zip -d ~/Downloads/
rsync -av ~/Downloads/plasmoids/.local ~
rm -rf ~/Downloads/plasmoids
git clone https://github.com/psifidotos/applet-window-appmenu.git
cd applet-window-appmenu
./install.sh
git clone https://github.com/psifidotos/applet-window-title.git
cd applet-window-title
kpackagetool5 -i .
cd ..
git clone https://github.com/ruvkr/applet-window-buttons.git
cd applet-window-buttons
./install.sh
cd ..
unzip top-panel.zip -d ~/Downloads/
kquitapp5 plasmashell 
mv ~/.config/plasma-org.kde.plasma.desktop-appletsrc ~/.config/plasma-org.kde.plasma.desktop-appletsrc-00
cp ~/Downloads/top-panel/plasma-org.kde.plasma.desktop-appletsrc ~/.config