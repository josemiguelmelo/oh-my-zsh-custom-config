echo "Cloning plugin $1 repository ($2)..."
git clone $2 ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/$1 || echo "Already cloned $1 plugin"

plugins="plugins=("
pluginsNew="$plugins $1 "
sed -i '' "s/$plugins/$pluginsNew/g" $3
