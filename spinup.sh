rm ~/.vimrc
rm ~/.tmux.conf
ln -s /home/$(whoami)/repos/config/vimrc /home/$(whoami)/.vimrc
ln -s /home/$(whoami)/repos/config/tmuxw /home/$(whoami)/.tmux.conf
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/tmp
mkdir -p ~/.vim/backup
vim -c "PlugInstall"
