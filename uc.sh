#!/bin/zsh
set -ex
cat ~/.vimrc > my_global_vimrc.txt
cat ~/.zshrc > my_global_shellrc.txt
cat ~/.ideavimrc > my_global_intellij_vimrc.txt 

cd /Users/pramod/Documents/workspace/config-docs/my-global-config
git checkout develop
git add .
git status

echo "Do you wish to push changes?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) 
git commit -m "auto push"
git push 
 break;;
        No ) exit;;
    esac
done
