#!/bin/bash

echo "bootstarpping emacs 24.1 repositories and installing packages ..."
sudo add-apt-repository ppa:cassou/emacs 
sudo apt-get update
sudo apt-get purge emacs-snapshot-common emacs-snapshot-bin-common emacs-snapshot emacs-snapshot-el emacs-snapshot-gtk emacs23 emacs23-bin-common emacs23-common emacs23-el emacs23-nox emacs23-lucid auctex emacs24 emacs24-bin-common emacs24-common
sudo apt-get install emacs24 emacs24-el

echo "installing auxialiry debian packages (currently not using el-get to do this)..."
sudo apt-get install bzr r-base git-svn texinfo ess texlive texlive-latex-extra
