#!/bin/sh

# Configured sink and source to be used with Jack
SINK='alsa_output.usb-PreSonus_AudioBox_USB_96_000000000000-00.analog-stereo'
SOURCE='alsa_input.usb-PreSonus_AudioBox_USB_96_000000000000-00.analog-stereo'

# Suspend just the devices we want to use with Jack
pacmd suspend-sink $SINK true
pacmd suspend-sink $SOURCE true

pactl load-module module-jack-sink channels=2
pactl load-module module-jack-source channels=2
pacmd set-default-sink jack_out
pacmd set-default-source jack_in

# Since Jack2 has no own MIDI support, so we need this bridge
a2jmidid -e &
