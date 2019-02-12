"
" For conceal markers.
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif

" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

" LanguageClient for every language
Plug 'autozimu/LanguageClient-neovim', {
            \ 'branch': 'next',
            \ 'do': 'bash install.sh',
            \ }
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'cpp': ['clangd'],
    \ 'c': ['clangd'],
    \ }


" snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'


" function signature
Plug 'Shougo/echodoc.vim'
" Always draw the signcolumn.
set signcolumn=yes
set cmdheight=2
let g:echodoc#enable_at_startup = 1


" file searcher
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"plug for session
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'

"plugin for switch to header
Plug 'derekwyatt/vim-fswitch'

" theme
Plug 'morhetz/gruvbox'
let g:gruvbox_italic=1

" cpp highlighting
Plug 'bfrg/vim-cpp-modern'

Plug 'tpope/vim-surround'

call plug#end()

colorscheme gruvbox
