sudo pacman -S fastfetch

# Dev Stuff
sudo pacman -S podman podman-compose --noconfirm
sudo pacman -S go --noconfirm

# Hyperland Utils
sudo pacman -S gtk3 gtk-layer-shell pango gdk-pixbuf2 libdbusmenu-gtk3 cairo glib2 gcc-libs glibc
sudo pacman -S dunst libnotify
sudo pacman -S pipewire wireplumber
sudo pacman -S xdg-desktop-portal-hyprland
sudo pacman -S qt5-wayland qt6-wayland
sudo pacman -S ttf-nerd-fonts-symbols
sudo pacman -S hyprpolkitagent
sudo pacman -S waybar

# Bluetooth
sudo pacman -S bluez
sudo pacman -S bluez-utils
sudo pacman -S blueman

# Audio
sudo pacman -S pipewire-docs
sudo pacman -S pavucontrol

# Clipboard
sudo pacman -S wl-clipboard

# AUR package manager
sudo pacman -S --needed git base-devel --noconfirm
git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si 

# Neovim stuff
sudo pacman -S gcc make ripgrep fd unzip neovim --noconfirm
git clone https://github.com/MisaelCodes/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim

# Fonts
sudo pacman -S ttf-nerd-fonts-symbols --no-confirm
echo "Select FantasqueSans it looks really good on kitty"
sudo yay -S nerd-fonts

# Kitty Themes
unzip config-kitty.zip -d ~/.config/kitty

# Oh my zsh!
sudo pacman -S zsh --noconfirm
sudo chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Omz pluggins
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "Remember to add the theme powerlevel10k/powerlevel10k and the plugins zsh-autosuggestions zsh-syntax-highlighting"


