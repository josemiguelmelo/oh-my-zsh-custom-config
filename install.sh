# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install antigen
brew install antigen

# Install tmux
brew install tmux

# Install fonts
sh fonts/install.sh

# Install zshrc
echo "Copying files..."
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh
cp .tmux.conf ~/.tmux.conf

