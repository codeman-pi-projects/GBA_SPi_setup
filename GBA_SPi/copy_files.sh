#!/bin/bash

asound_conf=asound.conf
echo "Copying i2s sound config..."
cp /home/pi/GBA_SPi_setup/GBA_SPi/$asound_conf  /etc/$asound_conf
echo "Done!"
read -p "Press enter to continue"

#retroarch_cfg=retroarch.cfg
#echo "Copying retroarch config..."
#cp "/home/pi/GBA_SPi_setup/GBA_SPi/$retroarch_cfg" "/opt/retropie/configs/all/$retroarch_cfg" 
#echo "Done!"
#read -p "Press enter to continue"

#es_cfg=es_input.cfg
#echo "Copying emulationstation input config..."
#cp /home/pi/GBA_SPi_setup/GBA_SPi/$es_cfg /opt/retropie/configs/all/emulationstation/$es_cfg
#echo "Done!"
#read -p "Press enter to continue"

#es_settings=es_settings.cfg
#echo "Copying emulationstation settings..."
#cp /home/pi/GBA_SPi_setup/GBA_SPi/$es_settings /opt/retropie/configs/all/emulationstation/$es_settings
#echo "Done!"
#read -p "Press enter to continue"

echo "Adding fixes for PIFBA audio"
sudo cp /home/pi/GBA_SPi_setup/GBA_SPi/.asound.rc /home/pi/
sudo cp /home/pi/GBA_SPi_setup/GBA_SPi/alsa-base.conf /etc/modprobe.d/
echo "Done!"
read -p "Press enter to continue"

#echo "Setting up ftp enable/disable scripts..."
#enable_ftp=enable-ftp.sh
#disable_ftp=disable-ftp.sh
#game_list=gamelist.xml
#cp /home/pi/GBA_SPi_setup/GBA_SPi/$enable_ftp /home/pi/RetroPie/retropiemenu/$enable_ftp
#cp /home/pi/GBA_SPi_setup/GBA_SPi/$disable_ftp /home/pi/RetroPie/retropiemenu/$disable_ftp
#cp /home/pi/GBA_SPi_setup/GBA_SPi/$game_list /home/pi/.emulationstation/gamelists/retropie/$game_list
#echo "Done!"
#read -p "Press enter to continue"

echo "Setting up GBA_SPi startup script..."
chmod +x /home/pi/GBA_SPi/minty-startup.sh
sudo cp /home/pi/GBA_SPi_setup/GBA_SPi/GBA_SPiStartup.service /etc/systemd/system/GBA_SPiStartup.service
sudo chmod 777 /etc/systemd/system/GBA_SPiStartup.service
sudo systemctl enable GBA_SPiStartup
echo "Done!"
read -p "Press enter to continue"

#sudo chown -R pi:pi /opt/retropie/configs
