filetype plugin indent on

set ignorecase
"ignorecase during pattern search vim

set number
set relativenumber
"display file number
set tabstop=4
set shiftwidth=4
set expandtab
set noea
set fdm=indent

" search in sub folders
set path+=**

set scrolloff=9

" Display all matching files when tab
set wildmenu

" Langue
set spelllang=fr,en_us
set spell

" leader
let mapleader = ","

let g:gruvbox_italic=1

nnoremap <Tab> :tabnext<CR>
nnoremap <Leader>bb :CtrlPBuffer<CR>
nnoremap <Leader>db :bd<CR>
nnoremap <Leader>dab :BufOnly<CR>
nnoremap <Leader>pb :bp<CR>
nnoremap <Leader>nb :bn<CR>
nnoremap <Leader>dt :tabclose<CR>
nnoremap <Leader>pt :tabp<CR>
nnoremap <Leader>tt :tabs<CR>:tabn 
nnoremap <Leader>nt :tabn<CR>
nnoremap <Leader>f :CtrlPMixed<CR>
nnoremap <Leader>qa :qa<CR>
nnoremap <Leader>gi :YcmCompleter GoToInclude<CR>
nnoremap <Leader>gdc :YcmCompleter GoToDeclaration<CR>
nnoremap <Leader>gdf :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>gg :YcmCompleter GoTo<CR>
nnoremap <Leader>pros :Prosession .<CR>
nnoremap <Leader>te :belowright sp +te <CR> :resize 12<CR>i
nnoremap <Leader>ter :!terminal -cd $PWD<CR>
nnoremap <Leader>sw :FSHere<CR>
nnoremap <Leader>rc :e $MYVIMRC<CR>
nnoremap <Leader>rl :so $MYVIMRC<CR>
nnoremap <Leader>snips :call UltiSnips#ListSnippets()<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>ormat :Autoformat<CR>
nnoremap <m-j> <C-w><C-j>
nnoremap <m-k> <C-w><C-k>
nnoremap <m-h> <C-w><C-h>
nnoremap <m-l> <C-w><C-l>
nnoremap <Leader>n :noh<CR>
tnoremap <Esc> <C-\><C-n>
tnoremap <M-[> <Esc>
tnoremap <C-v><Esc> <Esc>


command! BufOnly silent! execute "%bd|e#|bd#"

" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
" 
" " Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe'

Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'

Plug 'Chiel92/vim-autoformat'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'

Plug 'derekwyatt/vim-fswitch'

Plug 'morhetz/gruvbox'

Plug 'ctrlpvim/ctrlp.vim'

" " On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" 
" " Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" 
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }
" 
" " Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" 
" " Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" 
" " Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
" 
" " Initialize plugin system
call plug#end()

colorscheme gruvbox

