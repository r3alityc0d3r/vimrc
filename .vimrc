set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-markdown'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/Specky'

call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
"
filetype plugin indent on
syntax on
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set background=dark

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
set guifont=Liberation\ Mono\ for\ Powerline\ 10
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_puppet_checkers=['puppetlint']

let g:speckyRunSpecCmd = "bundle exec rake spec -r ~/.vim/bundle/Specky/ruby/specky_formatter.rb -f SpeckyFormatter"

let g:speckyBannerKey = "<C-S>b"
let g:speckyQuoteSwitcherKey = "<C-S>'"
let g:speckyRunRdocKey       = "<C-S>r"
let g:speckySpecSwitcherKey  = "<C-S>x"
let g:speckyRunSpecKey       = "<C-R>s"
let g:speckyWindowType       = 2

let g:nerdtree_tabs_smart_startup_focus1i=1
let g:nerdtree_tabs_open_on_console_startup=1
