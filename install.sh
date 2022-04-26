#! /bin/bash

# Initialisation of Script
printf "\n\n$c$b Loading Script $endc$enda"
sudo apt-get update &> /dev/null &&
printf "\r$g$b Script Loaded $endc$enda\n" ||
{ printf "\r$r$b Error Occured $endc$enda\n"; exit; }

# Installing Chrome Remote Desktop
printf "\n\n$g$b Installing Chrome Remote Desktop $endc$enda"
{
  wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
  sudo dpkg --install chrome-remote-desktop_current_amd64.deb
  sudo apt install --assume-yes --fix-broken
} &> /dev/null &&
printf "\r$c$b Chrome Remote Desktop Installed $endc$enda\n" ||
{ printf "\r$r$b Error Occured $endc$enda\n"; exit; }
sleep 3

# Install Desktop Environment
printf "\n$g$b Installing Desktop Environment $endc$enda"
{
  sudo DEBIAN_FRONTEND=noninteractive \
      apt install --assume-yes xfce4 desktop-base
  sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
  sudo apt install --assume-yes xscreensaver
  sudo systemctl disable lightdm.service
} &> /dev/null &&
printf "\r$c$b Desktop Environment Installed $endc$enda\n" ||
{ printf "\r$r$b Error Occured $endc$enda\n"; exit; }
sleep 3

# Install Google Chrome
printf "\n$g$b Installing Google Chrome $endc$enda"
{
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo dpkg --install google-chrome-stable_current_amd64.deb
  sudo apt install --assume-yes --fix-broken
} &> /dev/null &&
printf "\r$c$b Google Chrome Installed $endc$enda\n" ||
{ printf "\r$r$b Error Occured $endc$enda\n"; exit; }
sleep 3

printf "\n$g$b Installing other Tools $endc$enda"
{
  sudo apt install nautilus nano -y
} &> /dev/null &&
printf "\r$c$b Other Tools Installed $endc$enda\n" ||
{ printf "\r$r$b Error Occured $endc$enda\n"; exit; }
sleep 3

printf "\n$g$b Script Completed $endc$enda\n"
sleep 3