set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" --------- surround.vim --------------
" cs([ - Change surrounding from ( ) to [ ]
" ds( - Delete surounding ( )
" ysiw<h1> - Put <h1></h1> arround current inner word selection
Plugin 'tpope/vim-surround'
" --------- unimpaired.vim --------------
"  Nice mappings
Plugin 'tpope/vim-unimpaired'
" --------- repeat.vim --------------
" Repeat plugin changes, like surround and commentary
" So . operation works on ysiw<h1>
Plugin 'tpope/vim-repeat'
" --------- vim-polyglot --------------
" 100+ language packs for vim
" Loads dynamically
" Can be disabled by
" let g:polyglot_disabled = ['css']
Plugin 'sheerun/vim-polyglot'
" --------- Oceanic Next --------------
" A nice colorscheme for vim and airline
" let g:airline_theme='oceanicnext'
Plugin 'mhartington/oceanic-next'
" Get tern server
Plugin 'ternjs/tern_for_vim'
" --------- L9  --------------
" vim scripts lib
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
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
" Nice status bar
Plugin 'vim-airline/vim-airline'
" Preview markdown
Plugin 'suan/vim-instant-markdown'
" Python virtualenv in vim
" Plugin 'plytophogy/vim-virtualenv'
" Comments
Plugin 'tpope/vim-commentary'
" --------- vim-devicons  --------------
"  Nice devicons in a bunch of places
"  Depends on patched nerdfont
Plugin 'ryanoasis/vim-devicons'
" Hello code completion!
"Plugin 'Valloric/YouCompleteMe'
" DEOPLETE
Plugin 'Shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'carlitux/deoplete-ternjs'
Plugin 'HerringtonDarkholme/yats.vim'
"Plugin 'mhartington/nvim-typescript'
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
