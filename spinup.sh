git clone https://github.com/jchenVT/config.git
rm ~/.vimrc
rm ~/.tmux.conf
ln -s /home/a646273/config/vimrcwork /home/a646273/.vimrc
ln -s /home/a646273/config/tmuxwork /home/a646273/.tmux.conf
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c "PlugInstall"
