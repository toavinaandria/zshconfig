#!/usr/bin/env bash
ohmyzshfolder="~/.oh-my-zsh"
echo "Checking whether oh-my-zsh is installed"
if [ -f "$ohmyzshfolder" ]
then
	echo "Cannot find oh-my-zsh folder, downloading oh-my-zsh"
	curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
	echo "Copying .zshrc to home directory. Please customise zshrc to the particular machine as required"
	cp ./.zshrc ~/.zshrc
else
	echo ".oh-my-zsh folder found. No need to install"
	echo "Do you want to overwrite the .zshrc?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes ) echo "Copying .zshrc"; cp ./.zshrc ~/.zshrc; break;;
			No ) exit;;
		esac
	done
fi
