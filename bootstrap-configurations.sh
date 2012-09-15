#!/bin/bash

echo "replacing emacs configuration points in your system, backuping originals..."
ln -svb $PWD ~/.emacs.d
ln -svb ~/.emacs.d/personal/.emacs-custom.el ~/.emacs-custom.el
