" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

" Add line numbering.
set number

"" Plugins.
call plug#begin()

" R language.
Plug 'jalvesaq/Nvim-R'

" Gruvbox theme.
Plug 'morhetz/gruvbox'

call plug#end()
