##### Packages installation

termux-setup-storage

pkg install upgrade

pkg install python
pkg install python2
pkg install python-dev
pkg install lua
pkg install clang
pkg install libclang

pkg install gdb
pkg install make

pkg install git
pkg install vim
pkg install openssh

pkg install neofetch


curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

install_plugins() {
    for exe in "$@"; do
      eval "$exe +PlugInstall +qall"
    done
    ret="$?"
    success "Successfully installed plugins via vim-plug"
}


##### Packages configuration

git clone https://github.com/Ghosteon/dotfiles-termux.git
cd dotfiles-termux

cp ./bashrc ~/.bashrc
cp ./gitconfig ~/.gitconfig
cp ./vimrc ~/.vimrc
install_plugins "vim"

mkdir ~/.termux
cp ./termux.properties ~/.termux/termux.properties
