#!/bin/sh
if [ $(dpkg-query -W -f='${Status}' nala 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  printf "You dont seem to have Nala installed\n I'll do that for you.\n"
  sudo apt-get install nala;
  printf "Nala is just a cooler looking apt,\n"
fi

printf "Update\n"
sudo nala update;
printf "Upgrade\n"
sudo nala upgrade;
printf "Autoremove unused packages\n"
sudo nala autoremove;
printf "Purge the fu- i mean uuh remove unused files\n"
sudo nala autopurge;

if [ $(dpkg-query -W -f='${Status}' flatpak 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  sudo apt-get install flatpak;
  printf "YOU DONT HAVE FLATPAK??\n Alright then, each to their own i geuss.\n Flatpak is a universal package manager,\n and uuh discord is on it sooooooooooooo\n"
fi
printf "Update Flatpak\n"
flatpak update -y;
printf "Upda- i mean refresh snaps\n"
sudo snap refresh;
printf "\n\nDONE! Enjoy your updated system\n"
