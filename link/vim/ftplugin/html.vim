" Modifications for HTML files

" Use the screen-based versions of the most common movement commands instead of
" the text-based versions.
noremap <buffer> <Down> gj
noremap <buffer> j gj
noremap <buffer> <Up> gk
noremap <buffer> k gk
noremap <buffer> 0 g0
noremap <buffer> ^ g^
noremap <buffer> $ g$
noremap <buffer> G G$

" I and A enter insert mode at the beginning and end of the current screen
" line, rather than text line.
noremap <buffer> I g^i
noremap <buffer> A g$a
