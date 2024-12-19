" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged') " Declare the list of plugins.  adds some basic vim functionality in case stuff breaks
"good default vim options
Plug 'tpope/vim-sensible'
" adds git functionality to vim, run all git commands
Plug 'tpope/vim-fugitive'
" Adds git functionality: shows new, deleted, and changed lines
Plug 'airblade/vim-gitgutter'
" fuzzy file completion, for vim and terminal
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"sandwich allows for adding/deleting/replacing (), [], {}, and more to surround text Plug 'machakann/vim-sandwich' sleuth detects tabs or spaces and lenght and adjusts accordingly
Plug 'machakann/vim-sandwich'
"Sleuth for tabs/spaces auto
Plug 'tpope/vim-sleuth'
"adds cool statusline
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
"buffer line plugin
Plug 'ap/vim-buftabline'
"directory tree in vim"
Plug 'scrooloose/nerdtree'
"gruvbox colorscheme"
Plug 'morhetz/gruvbox'
"Search counter
Plug 'google/vim-searchindex'
" atuo configurations for language servers
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
" auto comppletion for ^
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
"===========================================================
"vim sandwich config
let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)
"===============================================================================
"vim only stuff here
set tabstop=4 "number of VISUAL spaces
set shiftwidth=4
set expandtab
set number "show line numbers
set showcmd "show command in bottomr bar
set cursorline "highlight current line
set wildmenu "visual autocompelete for command
set lazyredraw "redraw screen less often
set showmatch "highlight something lol
set incsearch "search as characters are etnered
set hlsearch "highlights matches
"so backspace is weird and this fixes taht? idk
" jk is wavy
inoremap jk <esc>
inoremap JK <esc>
inoremap kj <esc>
inoremap <caps> <esc>
set nowrap
syntax enable  " enable syntax processing
"backup stuff heres======================================================
set backup 
set writebackup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set undodir=~/.vim/backup
"Colorscheme ==================================================="
set termguicolors
set t_Co=256
function! ChangeBackground()
    colorscheme gruvbox
    let g:lightline ={
        \'colorscheme': 'gruvbox'
    \}
    if system("cat ~/mode.conf") =~ "NIGHT"
        set background=dark
    else
        set background=light
    endif
endfunction
call ChangeBackground()
"let g:gruvbox_contrast_light = 'medium'
"let g:lightline = {}
"let g:lightline.colorscheme = 'gruvbox'
"=================================================================
"This makes vim split stuff easier
"This allows movement between vi split with CTRL+HJKL
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
set splitbelow
set splitright
"==============================================================
"This auto expands opening brackets/parentheses
"this annoying inoremap ( ()<Esc>i
inoremap {{ {}<Esc>i
inoremap [[ []<Esc>i
inoremap (( ()<Esc>i
inoremap '' ''<Esc>i
inoremap "" ""<Esc>i
"Save time
:command WQ wq
:command Wq wq
:command W w
:command Q q
"nerdtreeeasier==================================================
:command Nt NERDTreeToggle
map <C-n> :NERDTreeToggle<CR>
"nerdtreeeasier==================================================
map <C-f> :FZF<CR>
map <C-g> :Rg<CR>
