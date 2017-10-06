if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=ucs-bom,utf-8,latin1
endif

set nocompatible	" Use Vim defaults (much better!)
set bs=indent,eol,start		" allow backspacing over everything in insert mode


set viminfo='20,\"50	" read/write a .viminfo file, don't store more
			" than 50 lines of registers
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time


" set the runtime path to include Vundle and initialize
set rtp +=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Utility
Plugin 'ryanoasis/vim-devicons'
Plugin 'bagrat/vim-workspace'
Plugin 'tomasiser/vim-code-dark'
Plugin 'scrooloose/nerdtree'		"arbre fichier
Plugin 'majutsushi/tagbar'			"outline
Plugin 'ervandew/supertab'			"completion
Plugin 'BufOnly.vim'
"Plugin 'wesQ3/vim-windowswap'
"Plugin 'SirVer/ultisnips'
"Plugin 'junegunn/fzf.vim'
"Plugin 'junegunn/fzf'
Plugin 'godlygeek/tabular'			"alignment
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'benmills/vimux'
Plugin 'jeetsukumaran/vim-buffergator'
"Plugin 'gilsondev/searchtasks.vim'
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'tpope/vim-dispatch'

" Generic Programming Support
Plugin 'jakedouglas/exuberant-ctags'
"Plugin 'honza/vim-snippets'
"Plugin 'Townk/vim-autoclose'
"Plugin 'tomtom/tcomment_vim'
"Plugin 'tobyS/vmustache'
"Plugin 'janko-m/vim-test'
"Plugin 'maksimr/vim-jsbeautify'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'neomake/neomake'

" Theme / Interface
"Plugin 'AnsiEsc.vim'
"Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

" OSX stupid backspace fix
set backspace=indent,eol,start

call vundle#end()            " required
filetype plugin indent on    " required

" Show linenumbers
set number
set ruler

"set background=dark
set t_Co=256
colorscheme codedark 
syntax enable

set showcmd

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=4

set cursorline

" Test vim-icon
set encoding=utf8
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
set guifont=Droid\ Sans\ Mono\ Nerd\ Font\ Complete\ 11

" vim workspace config
"let g:workspace_modified_icon = "+"
"let g:workspace_use_devicons = 0
"let g:workspace_right_trunc_icon = ">"
"let g:workspace_powerline_separators = 1
"let g:workspace_tab_icon = "\uf00a"
"let g:workspace_left_trunc_icon = "\uf0a8"
"let g:workspace_right_trunc_icon = "\uf0a9"

"noremap <Tab> :WSNext<CR>
"noremap <S-Tab> :WSPrev<CR>
"noremap <Leader><Tab> :WSClose<CR>
"noremap <Leader><S-Tab> :WSClose!<CR>
"noremap <C-t> :WSTabNew<CR>

"cabbrev bonly WSBufOnly


" Vim-Airline Configuration
let g:airline#extensions#tabline#left_sep = '>'
let g:airline#extensions#tabline#left_alt_sep = '>'
"let g:airline#extensions#tabline#buffer_idx_mode = '1'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = '0'
let g:airline_theme = 'codedark'

let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping pour l'activation de l'explorateur
"syst�me
""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F9> :NERDTree<CR>
nnoremap <silent> <F8> :CtrlP<CR>
nnoremap <silent> <F11> :Tagbar<CR>
nnoremap <silent> <F12> <C-]>
nnoremap <silent> <F10> :tjump<CR>
nmap <F5>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
nmap <F5>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
nmap <F5>c :cs find c <C-R>=expand("<cword>")<CR><CR>


if has("cscope") && filereadable("/usr/bin/cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add $PWD/cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif

