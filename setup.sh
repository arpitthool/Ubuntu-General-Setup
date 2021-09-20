#!/bin/bash

# software update
sudo apt update
sudo apt upgrade

echo "Do you want to install Java JRE and JDK (y/n)?"
read ans
if [ "n" != $ans ]
then
# install Java
sudo apt install default-jre
sudo apt install default-jdk
fi

echo "Do you want to install Maven (y/n)?"
read ans
if [ "n" != $ans ]
then
# install Maven
sudo apt install maven
fi

echo "Do you want to install Slack (y/n)?"
read ans
if [ "n" != $ans ]
then
# install slack
sudo snap install slack --classic
fi

echo "Do you want to install Zoom (y/n)?"
read ans
if [ "n" != $ans ]
then
# install zoom
sudo wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb
fi

echo "Do you want to install git (y/n)?"
read ans
if [ "n" != $ans ]
then
# install git
sudo apt install git
fi

echo "Do you want to install Intell Ultimate IDE (y/n)?"
read ans
if [ "n" != $ans ]
then
# install intellij ultimate IDE
sudo snap install intellij-idea-ultimate --classic
fi

echo "Do you want to install Chrome (y/n)?"
read ans
if [ "n" != $ans ]
then
# install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
fi

echo "Do you want to install VLC (y/n)?"
read ans
if [ "n" != $ans ]
then
# install VLC
sudo snap install VLC
fi

echo "Do you want to install OWASP ZAP (y/n)?"
read ans
if [ "n" != $ans ]
then
# install zap ALWAYS RUN AT LAST AS IT RUNS UI INSTALLER
wget https://github.com/zaproxy/zaproxy/releases/download/v2.10.0/ZAP_2_10_0_unix.sh
chmod u+x ZAP_2_10_0_unix.sh
sudo ./ZAP_2_10_0_unix.sh
fi
