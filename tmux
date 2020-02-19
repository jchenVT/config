#set the colors right
setw -g xterm-keys on
set -g default-terminal "screen-256color"

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
bind-key -T copy-mode-vi 'y' send -X copy-selection-and-cancel


#gruvbox color i guess
# COLORSCHEME: gruvbox light

BG1="#ebdbb2"
BG2="#7c6f64"
BG3="#d5c4a1"
FG1="#f2e5bc"

set-option -g status "on"

# default statusbar colors
set-option -g status-bg $BG1 #bg1
set-option -g status-fg $FG1 #fg1

# default window title colors
set-window-option -g window-status-bg $BG1 #yellow
set-window-option -g window-status-fg $BG3 #bg1

set-window-option -g window-status-activity-bg $BG2 #bg1
set-window-option -g window-status-activity-fg colour248 #fg3

# active window title colors
set-window-option -g window-status-current-bg $BG2
set-window-option -g window-status-current-fg $BG1 #bg1

# pane border
set-option -g pane-active-border-fg $BG3
set-option -g pane-border-fg $BG3

# message infos
set-option -g message-bg $BG1 #bg2
set-option -g message-fg $BG2 #fg1

# commands
set-option -g message-command-bg $BG1 #fg3
set-option -g message-command-fg $FG1 #bg1

# pane number display
set-option -g display-panes-active-colour colour250 #fg2
set-option -g display-panes-colour colour237 #bg1

# clock
set-window-option -g clock-mode-colour colour24 #blue

# bell
set-window-option -g window-status-bell-style fg=colour229,bg=colour88 #bg, red

set-option -g status-attr "none"
set-option -g status-justify "left"
set-option -g status-left-attr "none"
set-option -g status-left-length "80"
set-option -g status-right-attr "none"
set-option -g status-right-length "80"
set-window-option -g window-status-activity-attr "none"
set-window-option -g window-status-attr "none"
set-window-option -g window-status-separator ""

set-option -g status-left "#[fg=$FG1, bg=$BG2] #S #[fg=$BG2, bg=$BG1, nobold, noitalics, nounderscore]|"
set-option -g status-right "#[fg=$BG3, bg=$BG1, nobold, nounderscore, noitalics]|#[fg=$BG2,bg=$BG3] %Y-%m-%d | %H:%M #[fg=$BG2, bg=$BG3, nobold, noitalics, nounderscore]|#[fg=$FG1, bg=$BG2] #h "

set-window-option -g window-status-current-format "#[fg=$BG3, bg=$BG1, :nobold, noitalics, nounderscore]|#[fg=$BG1, bg=$BG2] #I |#[fg=$BG1, bg=$BG2, bold] #W #[fg=$BG2, bg=$BG1, nobold, noitalics, nounderscore]|"
set-window-option -g window-status-format "#[fg=$BG1,bg=$BG3,noitalics]|#[fg=$BG2,bg=$BG3] #I |#[fg=$BG2, bg=$BG3] #W #[fg=$BG3, bg=$BG1, noitalics]|"

