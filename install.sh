#!/usr/bin/env bash

stow -t ~/.local/share -S fonts
stow -t ~/.local/share -S icons
stow -t ~/.local -S bin
stow -t ~/.config -S waybar
stow -t ~/.config -S hypr
stow -t ~/.config -S rofi
stow -t ~/.config -S kitty
stow -t ~/.config -S nvim
stow -t ~/.config -S neofetch
stow -t ~/.config -S zathura
stow -t ~/.config -S fcitx5
stow -t ~/.config -S dunst
stow -t ~ -S zsh
stow -t ~/Pictures -S wallpaper

# Install all zsh plugins from github to the right directories (github repos should be added as submodules in the future)
## zsh-autosuggestion (https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

## zsh-syntax-highlighting (https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)

## zsh-completion (https://github.com/zsh-users/zsh-completions)
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
#echo "fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src" >> ~/.zshrc

## fzf (https://wiki.archlinux.org/title/Fzf)
yay install fzf

## zsh theme powerlevel10k(https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#installation)
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
