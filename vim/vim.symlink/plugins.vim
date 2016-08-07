filetype off

call plug#begin('~/.vim/plugged')

" ESLint
Plug 'scrooloose/syntastic'

" Languages
Plug 'elmcast/elm-vim'
Plug 'ingydotnet/yaml-vim'
Plug 'mitsuhiko/vim-json'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

" Themes
Plug 'lifepillar/vim-wwdc16-theme'
Plug 'mhartington/oceanic-next'
Plug 'w0ng/vim-hybrid'

" Toolbelt
Plug 'adonis0147/prettyGuides'
Plug 'bling/vim-airline'
Plug 'chrisbra/vim-show-whitespace'
Plug 'editorconfig/editorconfig-vim'
Plug 'luochen1990/rainbow'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'umutcoskun/vim-whitespaces'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

filetype plugin indent on
