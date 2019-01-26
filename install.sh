##### Packages installation

termux-setup-storage

pkg install upgrade

pkg install python
pkg install lua
pkg install clang

pkg install gdb

pkg install git
pkg install openssh

pkg install neofetch


##### (Space)Vim configuration

pkg install make

pkg install vim
git clone https://github.com/liuchengxu/space-vim.git ~/.space-vim
cd ~/.space-vim
make vim
cd ..


##### Packages configuration

git clone https://github.com/Ghosteon/dotfiles-termux.git
cd dotfiles-termux

cp ./bashrc ~/.bashrc
cp ./gitconfig ~/.gitconfig
cp ./spacevim ~/.spacevim

mkdir ~/.termux
cp ./termux.properties ~/.termux/termux.properties