" This file (or .exrc for ed/ex/vi only options) handles vim config
" To apply changes without leaving vim do
" :w (write file to disk)
" :so % (source the current file)
" current session options will remain though

" Tips
" If read-only by accident do
" :w !sudo tee %
" to send the write to a sudo session of tee that writes in the current file

" Colorscheme (this clears all highlights! Leave here)
:colo darktango

" Config
set nocompatible
set autowrite
set icon
set ttyfast
set number
set ruler
set showmode
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set autoindent
set smartindent
set hls " highlights searchers
set cursorline
set matchpairs+=<:>
set nofixendofline
set noendofline

" Set current line color and style
:hi clear CursorLineNr
:hi CursorLine cterm=none ctermbg=darkblue
:hi link CursorLineNr CursorLine

:hi MatchParen ctermbg=red
" Set color of matching parens

" Custom keybinds
" Clear highlight searches
map <c-l> :noh<cr>

" Move lines up and down using alt (ctrl-v in insert mode for actual escape sequence)
" Alt is often escape sequence
noremap <c-j> :m .+1<cr>==
noremap <c-k> :m .-2<cr>==
vnoremap <c-j> :m '>+1<cr>==gv
vnoremap <c-k> :m '<-2<cr>==gv

" Keybind for clang-format
map cf :% !clang-format --style=Google %<cr>