#!/usr/bin/env bash

# code, platformio, kicad, arduino, lb, prusaslicer, inkscape, hyperlink desktop: onshape,

# Programs List (for apt)
programs_apt = ('git' 'code' 'kicad' 'arduino' 'prusaslicer' 'inkscape')

# Programs List (for flatpak)
program_fp = ('com.prusa3d.PrusaSlicer')

## Requirements
sudo apt update -y
sudo apt upgrade -y

sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


echo "Starting install..."

for i in programs_apt; do
    {
        sudo apt install -y $i
        echo "Installed $i"
    } || {
        echo "Failed installing $i"
    }
done

for i in program_fp; do
    {
        flatpak install flathub -y $i
        echo "Installed $i"
    } || {
        echo "Failed installing $i"
    }
done

