#!/usr/bin/env bash

# code, platformio, kicad, arduino, lb, prusaslicer, inkscape, hyperlink desktop: onshape,

# Programs List (for apt)
programs_apt=('git' 'code' 'kicad' 'arduino' 'prusaslicer' 'inkscape')

# Programs List (for flatpak)
program_fp=('com.prusa3d.PrusaSlicer')

## Requirements
sudo apt update -y -q > /dev/null
sudo apt upgrade -y -q > /dev/null

sudo apt install flatpak > /dev/null
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo > /dev/null


echo "Starting install..."

for i in ${programs_apt[@]}; do
    package=${programs_apt[i]}
    {
        sudo apt install -y -q $package > /dev/null
        echo "Installed $i..."
    } || {
        echo "Failed installing $package"
    }
done

for i in ${programs_fp[@]}; do
package=${programs_fp[i]}
    {
        flatpak install flathub -y $package > /dev/null
        echo "Installed $i..."
    } || {
        echo "Failed installing $i"
    }
done

