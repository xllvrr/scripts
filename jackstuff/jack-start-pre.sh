#!/bin/sh

# Configured sink and source to be used with Jack
SINK='alsa_output.usb-PreSonus_AudioBox_USB_96_000000000000-00.analog-stereo'
SOURCE='alsa_input.usb-PreSonus_AudioBox_USB_96_000000000000-00.analog-stereo'

# Suspend just the devices we want to use with Jack
pacmd suspend-sink $SINK true
pacmd suspend-sink $SOURCE true
