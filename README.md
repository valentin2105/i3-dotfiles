# i3-dotfiles
dotfiles for i3-wm

Inspired by https://www.github.com/keyitdev/dotfiles

```
cd ~/Documents && git clone https://github.com/valentin2105/i3-dotfiles.git dotfiles/

yay -S acpi alsa-utils base-devel curl git pulseaudio pulseaudio-alsa xorg xorg-xinit alacritty btop code dunst feh firefox i3-gaps libnotify light mpc mpd ncmpcpp nemo neofetch neovim pacman-contrib papirus-icon-theme picom polybar ranger rofi scrot slop xclip zathura zathura-pdf-mupdf zsh i3lock-color i3-resurrect ffcast oh-my-zsh-git nitrogen
```


Create symlinks if you want for each conf folder: 

```

cp -r ~/.config/ranger ~/.config/ranger-backup
rm -r ~/.config/ranger
ln -sf  ~/Documents/dotfiles/ranger ~/.config/ranger
```

Fonts: 

```
sudo cp fonts/* /usr/share/fonts/ 

```


