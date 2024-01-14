#!/bin/zsh

echo "Installing commandline tools"
xcode-select --install

# Homebrew
echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off

## Taps
echo "Tapping Brew..."
brew tap homebrew/cask-fonts
brew tap FelixKratz/formulae
brew tap koekeishiya/formulae

## Formulae
echo "Installing Brew Formulae"
brew install wget
brew install jq
brew install ripgrep
brew install skhd
brew install sketchybar
brew install borders
brew install yabai

### Terminal
brew install neovim
brew install starship
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

### Other
brew install btop
brew install lazygit
brew install dooit
brew install spotify-tui

## Casks
echo "Installing Brew Casks"
###Terminals
brew install --cask alacritty
brew install --cask kitty

### Office
brew install --cask zoom
brew install --cask vlc

### Other
brew install spotify
brew install discord
brew install firefox

### Fonts
brew install --cask sf-symbols
brew install --cask font-hack-nerd-font
brew install --cask font-jetbrains-mono
brew install --cask font-fira-code

# Install vim-plug
if [-f $HOME/.vim/autoload/plug.vim]; then
	echo "Already installed, skipping..."
else
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi

# Copying and checking out configuration files
echo "Planting Configuration Files..."
[ ! -d "$HOME/dotfiles" ] && git clone --bare git@github.com:BuiHuy57/dot-files.git $HOME/dotfiles
git --git-dir=$HOME/dotfiles/ --work-tree=$HOME checkout master

# Installing Fonts
git clone git@github.com:shaunsingh/SFMono-Nerd-Font-Ligaturized.git /tmp/SFMono_Nerd_Font
mv /tmp/SFMono_Nerd_Font/* $HOME/Library/Fonts
rm -rf /tmp/SFMono_Nerd_Font/

curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v1.0.16/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf

source $HOME/.zshrc

# Start Services
brew services start skhd
brew services start yabai
brew services start sketchybar
brew services start borders
