
" GENERAL OPTIONS
behave xterm
set viminfo='20,\"500,%	" ' Maximum number of previously edited files for which the marks
			"   are remembered.  
			" " Maximum number of lines saved for each register.
			" % When included, save and restore the buffer list.  If Vim is
			"   started with a file name argument, the buffer list is not
			"   restored.  If Vim is started without a file name argument, the
			"   buffer list is restored from the viminfo file.  Buffers
			"   without a file name and buffers for help files are not written
			"   to the viminfo file.
set history=500		" keep {number} lines of command line history
set nowrap          " whether to wrap lines
set tabstop=4		" ts, number of spaces that a tab *in an input file* is equivalent to
"set softtabstop=4       "     number of spaces that a tab *pressed by the user* is equivalent to
set shiftwidth=4	" sw, number of spaces shifted left and right when issuing << and >>  commands
"set expandtab           " don't output tabs; replace with spaces.
set autoindent          " follow current indentation
set smartindent         " obey brace-indentation rules

" set number		" number lines
set nocompatible
set incsearch
set showmatch
"set backspace=1
syntax on

set cinoptions=:0,p0,t0
set cinwords=if,unless,else,while,until,do,for,switch,case
set formatoptions=tcqr
set cindent
set bg=dark

" Because we like our line numbers sometimes...
:nmap <C-N><C-N> :set invnumber <CR> 

" But we don't always wanna wrap
:nmap <C-w><C-w> :set invwrap <CR> 

" And all the cool kids need to paste
:nmap <C-p><C-p> :set invpaste <CR>

" CODE FOLDING!
vmap <space> zf
vmap <space> zd

" Kinda cool
"colorscheme koehler

" VIM DISPLAY OPTIONS
 set showmode		" show which mode (insert, replace, visual)
 set ruler
 set title
 set showcmd		" show commands in status line when typing
 set wildmenu	

