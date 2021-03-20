#!/bin/bash
# https://support.system76.com/articles/audio/
systemctl --user restart pulseaudio
rm -r ~/.config/pulseaudio
pulseaudio -k