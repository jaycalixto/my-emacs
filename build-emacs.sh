#!/bin/bash

sudo apt-get build-dep emacs24
wget http://www.nic.funet.fi/pub/gnu/ftp.gnu.org/pub/gnu/emacs/emacs-24.4.tar.gz
aunpack emacs-24.4.tar.gz 
cd emacs-24.4/
./configure
make
sudo make install
