zshrcFile=~/.zshrc
zshrcFileTemplate=.zshrc_template
tmpFile=~/.zshrc_tmp

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# Install powerlevel theme
sh theme/powerlevel.sh $zshrcFileTemplate $tmpFile

# Install fonts
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts

# Install plugins
sh plugins/all.sh $tmpFile

mv $tmpFile $zshrcFile
rm $tmpFile
