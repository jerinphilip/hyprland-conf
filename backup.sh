#!/bin/bash

set -x

rsync -rvz $HOME/.config/hypr/ hypr/
rsync -rvz $HOME/.config/waybar/ waybar/
rsync -rvz $HOME/.config/dunst/ dunst/
