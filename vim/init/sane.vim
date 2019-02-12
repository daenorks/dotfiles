filetype plugin indent on

set ignorecase
"ignorecase during pattern search vim

set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»
",eol:¶

set number
set relativenumber
"display file number
set tabstop=4
set shiftwidth=4
set expandtab
set noea
set fdm=indent

set wildignore+=*.o
" search in sub folders
set path+=**

set scrolloff=9

let &colorcolumn=81

" Display all matching files when tab
set wildmenu

" Langue
set spelllang=fr,en_us
set spell
