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
Plug 'chrisbra/vim-show-whitespace'
Plug 'editorconfig/editorconfig-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree'
Plug 'umutcoskun/vim-whitespaces'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'

call plug#end()
filetype plugin indent on
