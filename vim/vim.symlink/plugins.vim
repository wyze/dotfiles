filetype off

call plug#begin('~/.vim/plugged')

" ESLint
Plug 'scrooloose/syntastic'

" Languages
Plug 'elmcast/elm-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Themes
Plug 'lifepillar/vim-wwdc16-theme'
Plug 'mhartington/oceanic-next'
Plug 'w0ng/vim-hybrid'

" Toolbelt
Plug 'bling/vim-airline'
Plug 'editorconfig/editorconfig-vim'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'yggdroot/indentline'

call plug#end()
filetype plugin indent on
