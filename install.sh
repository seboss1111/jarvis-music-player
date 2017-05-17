#!/usr/bin/env bash

# Install the music player
[[ -z $(which xmms2) ]] && sudo apt-get --yes --force-yes install xmms2

# Prepare the player
xmms2 playlist remove music
xmms2 playlist create music
xmms2 playlist switch music
