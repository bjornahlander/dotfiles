syntax on
set t_Co=256
if (has("termguicolors"))
  set termguicolors
endif

"Set search highlight
set hlsearch
"Set realtive numbers in margin
set relativenumber
"Set line numbers
set number
" make backspace work as normal
set backspace=indent,eol,start

" Set up all time undo
set undodir=~/.config/vim/undodir
set undofile
set undolevels=100
set undoreload=1000
" Backup
set backupdir=~/.config/vim/backup
set directory=~/.config/vim/backup

"TABS
"Insert spaces instead
set expandtab
"How many spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
" duno
set smarttab
"autmatically indent
set autoindent
" duno
set smartindent

" Always utf8
set termencoding=utf-8
" set encoding=utf-8
set fileencoding=utf-8

" Fonts patched with Nerd font
set guifont=DroidSansMono_Nerd_Font:h12

set noswapfile

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

set so=5 " scroll lines above/below cursor
set sidescrolloff=5
set lazyredraw

set autoread

set ttimeout
set ttimeoutlen=100

" detect .md as markdown instead of modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

set wrap
"set textwidth=80
set fo=qrn1
set colorcolumn=85

colorscheme OceanicNext
