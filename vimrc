""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc -- the way it ought to be: modified from dpatierno
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

behave xterm
set nocompatible       " no compatibility with vi
filetype on            " recognize syntax by file extension
filetype indent on     " check for indent file
syntax on              " syntax highlighting
hi clear search        " do not highlight all search matches

set ai " Auto indent
set si " smart indenting

" bg overridden by colorscheme
"set background=light   " background light, so foreground not bold
"set background=dark     " background dark

set backspace=2        " allow <BS> to go past last insert
set gdefault           " assume :s uses /g
set ignorecase         " ignore case in search patterns
set smartcase          " searches are case-sensitive if caps used
set incsearch          " immediately highlight search matches
set noerrorbells       " no beeps on errors
set nomodeline         " prevent others from overriding this .vimrc
set number             " display line numbers
set ruler              " display row, column and % of document
set showcmd            " show partial commands in the status line
set showmatch          " show matching () {} etc.
set showmode           " show current mode

" Settings for autoindentation, comments, and what-have-you

set expandtab          " expand tabs with spaces
set tabstop=3          " <Tab> move three characters
set shiftwidth=3       " >> and << shift 3 spaces
"set textwidth=79       " hard wrap at 79 characters
set modeline           " check for a modeline
set softtabstop=3      " see spaces as tabs
set scrolloff=5        " start scrolling when cursor is N lines from edge


" whoa... wtf?
set nowrap             " don't soft wrap
set wrap               " linewrap

" turns status line always on and configures it
set laststatus=2
set statusline=%<%f\ %m\ %h%r%=%b\ 0x%B\ \ %l,%c%V\ %P

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color Stuff
"colorscheme koehler
"colorscheme elflord
colorscheme darknat

" Highlights long lines
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Markdown
augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
augroup END

" Makefiles
autocmd BufEnter ?akefile* set noet ts=8 sw=8 nocindent list lcs=tab:>-,trail:x

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Bindings, like a boss... ( cartography section )
noremap <Ins> 2<C-Y>   " <Ins> defaults like i
noremap <Del> 2<C-E>   " <Del> defaults like x

" Because we like our line numbers sometimes...
:nnoremap <C-N><C-N> :set invnumber<CR> 

" But we don't always wanna wrap
:nnoremap <C-w><C-w> :set invwrap<CR> 

" And all the cool kids need to paste
:nnoremap <C-p><C-p> :set invpaste<CR>

" Use the space key to open and close code folds
:vnoremap <space> zf<CR>
:nnoremap <space> zd<CR>

" Tabs can be fun too!
:nnoremap ,. :tabnew<CR>
:nnoremap ., :tabclose<CR>

" And this is how pros navigate splits and tabs.
:nnoremap .q :tabp<CR>
:nnoremap .e :tabn<CR>
:nnoremap .w <c-w><Up><CR>
:nnoremap .s <c-w><Down><CR>
:nnoremap .a <c-w><Left><CR>
:nnoremap .d <c-w><Right><CR>
:nnoremap .1 :tabn 1<CR>
:nnoremap .2 :tabn 2<CR>
:nnoremap .3 :tabn 3<CR>
:nnoremap .4 :tabn 4<CR>
:nnoremap .5 :tabn 5<CR>
:nnoremap .6 :tabn 6<CR>
:nnoremap .7 :tabn 7<CR>
:nnoremap .8 :tabn 8<CR>
:nnoremap .9 :tabn 9<CR>

" I want to be able to navigate with one hand.
:nnoremap xq :tabp<CR>
:nnoremap xe :tabn<CR>
:nnoremap xw <c-w><Up><CR>
:nnoremap xs <c-w><Down><CR>
:nnoremap xa <c-w><Left><CR>
:nnoremap xd <c-w><Right><CR>
:nnoremap x1 :tabn 1<CR>
:nnoremap x2 :tabn 2<CR>
:nnoremap x3 :tabn 3<CR>
:nnoremap x4 :tabn 4<CR>
:nnoremap x5 :tabn 5<CR>
:nnoremap x6 :tabn 6<CR>
:nnoremap x7 :tabn 7<CR>
:nnoremap x8 :tabn 8<CR>
:nnoremap x9 :tabn 9<CR>

