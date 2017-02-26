" Enable Sytax Highlighting
syn on

" Set indentation to 2 spaces
set shiftwidth=2

" Enable the mouse
" NOTE: On OS X, this requires MouseTerm
"       https://bitheap.org/mouseterm/
set mouse=a

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod

" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing

if version >= 703
  set colorcolumn=80
endif

highlight ColorColumn ctermbg=233

" Stop vim from inserting line break characters for long lines
:set wrap linebreak textwidth=0

set formatoptions-=tc

" Turn on hightlighting of search hits
set hlsearch

" Use system clipboard by default
set clipboard=unnamed

au VimEnter *  NERDTree
:map <Leader>n :NERDTree<cr>
