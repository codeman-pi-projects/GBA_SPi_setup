#!/bin/bash
omxplayer -o alsa -b --layer 10000 "/home/pi/GBA_SPi_splash_v1.mp4" &
sudo python /home/pi/Button_Controller/monitor.py
sleep 25s
sudo pkill omxplayer
