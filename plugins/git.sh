
plugins="plugins=("
pluginsNew="$plugins git "
sed -i '' "s/$plugins/$pluginsNew/g" $1
