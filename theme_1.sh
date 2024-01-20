#!/bin/bash

git clone https://github.com/vinceliuice/MacSonoma-kde.git
cd MacSonoma-kde
./install.sh --round
cd ..
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme
./install.sh
./tweaks.sh -F
sudo flatpak override --filesystem=xdg-config/gtk-4.0
cd ..
git clone --single-branch --depth=1 https://github.com/Luwx/Lightly.git
cd Lightly && mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF ..
make
sudo make install
cd ..
cd ..
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
./install.sh -a
cd ..
git clone https://github.com/vinceliuice/WhiteSur-cursors.git
cd WhiteSur-cursors
./install.sh
cd ..
unzip fonts.zip -d ~/.local/share/
unzip wallpapers.zip -d ~/.local/share/