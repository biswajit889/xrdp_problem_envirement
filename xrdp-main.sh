#!/bin/bash
sudo apt-get update && sudo apt-get install xrdp
=== xfce4 ======
sudo apt-get install xfce4 && sudo apt-get install xfce4-terminal && sudo apt-get install gnome-icon-theme-full tango-icon-theme
===Mate=====
sudo apt-get install mate-core mate-desktop-environment mate-notification-daemon
====================================
==================================
Xrdp
===================================
xrdp use Xfce4 envirement
===========================
sudo sed -i.bak '/fi/a #xrdp multiple users configuration \n xfce-session \n' /etc/xrdp/startwm.sh
============================================
xrdp use mate envirement
==========================================

sudo sed -i.bak '/fi/a #xrdp multiple users configuration \n mate-session \n' /etc/xrdp/startwm.sh
=========================================================



======================
firewall
========================

# allow just RDP through the local firewall
sudo ufw allow 3389/tcp
# restart xrdp 
sudo /etc/init.d/xrdp restart



cd $HOME && echo "gnome-session --session=gnome-fallback" > .xsession

