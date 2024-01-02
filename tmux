# set tmux use zsh
set-option -g default-shell /bin/zsh
#set the colors right
setw -g xterm-keys on
set -g default-terminal "xterm-256color"

#switch to ctrl-a for key
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix

#incresae the display buffer
set -g history-limit 1000
#move between panes with vim like bindings
bind -r h select-pane -L
bind -r j select-pane -D
bind -r k select-pane -U
bind -r l select-pane -R
# vim-like pane resizing  
bind -r C-k resize-pane -U
bind -r C-j resize-pane -D
bind -r C-h resize-pane -L
bind -r C-l resize-pane -R

#vim bindings for copy mode
bind-key v copy-mode
set-window-option -g mode-keys vi
bind-key -T copy-mode-vi 'v' send -X begin-selection
#bind-key -T copy-mode-vi 'y' send -X copy-selection-and-cancel
bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'xclip -in -selection clipboard'


# source tmux colors
source-file ~/config/tmuxdark.conf
