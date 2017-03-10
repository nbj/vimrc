" ********** VUNDLE PACKAGE MANAGER **********
set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader = ','

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins goes here
Plugin 'tpope/vim-vinegar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'msanders/snipmate.vim'
Plugin 'adoy/vim-php-refactoring-toolbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required





" ********** MAPPINGS ***********
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>f :tags<space>
nmap <Leader>es :tabedit ~/.vim/snippets/php.snippets<cr> 
nmap <Leader>q :bd<cr>
nmap <Leader>e :tabedit<space>
nmap <Leader>tag :!ctags -R<cr>





" ********** EDITOR CONFIGURATION **********
set backspace=indent,eol,start          "Make backspace behave 
set noerrorbells visualbell t_vb=       "Disable bells
set nobackup                            "No backup files
set nowritebackup                       "Only in case you don't want a backup file while editing
set noswapfile                          "No swap files
set noundofile                          "No undo files





" ********** VISUALS  **********
colorscheme atom-dark-256               "Sets the colorscheme 
syntax enable                           "Enables syntax highlighting
set cursorline                          "Highlignt cursor line
set nowrap                              "Dont wrap lines
set number                              "Enable line nubmers
set numberwidth=5                       "Linenumber column width
set tabstop=4                           "Sets tab width
set shiftwidth=4
set expandtab
set hlsearch                            "Highlight search
set incsearch                           "Enable incremental search





" ********** GUIOPTIONS **********
set guifont=Operator\ Mono:h18          "Set font for GUI
set linespace=10                        "Set linespacing for GUI

set guioptions-=l                       "Disable GUI scrollbars
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=e                       "Disable GUI Tabs

set mouse=a                             "Enable mouse




" ********** CTRL P **********
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git$'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'





" ********** AUTO COMMANDS ***********
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup end





" ********** FUNCTIONS **********
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<cr>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<cr>


function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<cr>
autocmd FileType php noremap <Leader>nf :call IPhpExpandClass()<cr>
