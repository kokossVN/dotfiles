#!/usr/bin/env bash

sudo modprobe v4l2loopback devices=1 video_nr=0 card_label="Virtual_Webcam"
VIDEO_DEVICE=$(v4l2-ctl --list-devices | grep video | sed -e 's/^\s*//' -e '/^$/d')

scrcpy \
	--v4l2-sink="$VIDEO_DEVICE" \
	--lock-video-orientation=3 \
	--crop=720:1048:0:110 \
	--turn-screen-off
