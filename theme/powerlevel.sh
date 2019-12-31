brew tap sambadevi/powerlevel9k

brew install powerlevel9k

ZSH_THEME="ZSH_THEME="
Commented_ZSH_THEME="#ZSH_THEME_="

sed "s/$ZSH_THEME/$Commented_ZSH_THEME/g" $1 > $2
  
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >> $2
echo "source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme\n$(cat $2)" > $2
echo "POWERLEVEL9K_MODE=\"awesome-patched\"\n$(cat $2)" > $2
