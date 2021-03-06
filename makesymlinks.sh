#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/Dotfiles                    # dotfiles directory
olddir=~/.Dotfiles_old             # old dotfiles backup directory
files=".vimrc .compton.conf .i3 .tmux.conf .Xmodmap .xmonad .xmobarrc .xutils
.Xresources .aliases .asoundrc .xinitrc .bash_profile .zshrc .i3status.conf"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"

    if [ -f $HOME/$file ]; then
      mv ~/$file $olddir
    fi

    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done

