
set t_Co=256

" Set leader to ,
let mapleader = ","
let g:mapleader = ","

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" surround stuff
Plugin 'tpope/vim-surround'
" Get tern server
Plugin 'ternjs/tern_for_vim'
" Bunch of help on all kinds of languages
Plugin 'sheerun/vim-polyglot'
" plugin on GitHub repo
Plugin 'mhartington/oceanic-next'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Hello code completion!
Plugin 'Valloric/YouCompleteMe'
" Some color schemas
Plugin 'flazz/vim-colorschemes'
" For file browsing
Plugin 'scrooloose/nerdtree'
" CtrlP for finding files quickly
Plugin 'ctrlpvim/ctrlp.vim'
" vimproc for async execution lib
Plugin 'Shougo/vimproc.vim'
"Tsuquyomi for typescript client TSServer
Plugin 'Quramy/tsuquyomi'
" Plugin for sass color in editor
Plugin 'gorodinskiy/vim-coloresque.git'
"Tagbar plugin for display quick class overview
Plugin 'majutsushi/tagbar'
"Syntastic syntax checker, has a world of checking plugins
Plugin 'vim-syntastic/syntastic'
"Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"" Fugitive
Plugin 'tpope/vim-fugitive'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on 
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

colorscheme OceanicNext

"TABS
"Insert spaces instead
set expandtab
"How many spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
"autmatically indent
set autoindent

"
set wrap
"set textwidth=80
set fo=qrn1
set colorcolumn=85

"Set realtive numbers in margin
set relativenumber
"Set line numbers
set number
"Set search highlight
set hlsearch

"Learn traversing the right way
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"Mappings
inoremap jj <ESC>
nnoremap "*p <D-v>
nnoremap <F8> :TagbarToggle<CR>

"window traversal
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Open NERDTree automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Show hidden files in NERDTree
let NERDTreeShowHidden=1
nnoremap <Leader>f :NERDTreeToggle<Enter>
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
" make backspace work as normal
set backspace=indent,eol,start

"Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Grep stuff
:nnoremap ,s :exe 'grep ' . expand('<cword>') . ' *'<CR>

"Checkers
let g:syntastic_python_checkers = ['pylint']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["html"] }
" ---------------------------------- "
" Configure Ultisnip and YouCompleteMe
" ---------------------------------- "

let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<C-h>"

" ---------------------------------- "
" Configure YouCompleteMe
" ---------------------------------- "

let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

"let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']

" Goto definition with F3
map <F3> :YcmCompleter GoTo<CR>

" ---------------------------------- "
" Configure CtrlP
" ---------------------------------- "
let g:ctrlp_map = "<C-p>"
let g:ctrlp_cmd = "CtrlP"
" Choose nearet ancestor that contain .git .svn etc
let g:ctrlp_working_path_mode = "ra"
let g:ctrlp_root_markers = ["package.json"]

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows
"Ignore files in gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_dont_split = 'NERD'
