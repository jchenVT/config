git clone https://github.com/jchenVT/config.git
rm ~/.vimrc
rm ~/.tmux.conf
ln -s /home/a646273/config/bashaliaswork /home/a646273/.bash_aliases
ln -s /home/a646273/config/vimrcwork /home/a646273/.vimrc
ln -s /home/a646273/config/tmuxwork /home/a646273/.tmux.conf
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir .vim/backup
mkdir .vim/tmp
vim -c "PlugInstall"
