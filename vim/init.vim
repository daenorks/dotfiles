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

" leader
let mapleader = ","

let g:gruvbox_italic=1

" Always draw the signcolumn.
set signcolumn=yes

function SetLSPShortcuts()
    nnoremap <leader>ld :call LanguageClient#textDocument_definition()<CR>
    nnoremap <leader>lr :call LanguageClient#textDocument_rename()<CR>
    nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
    nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
    nnoremap <leader>lx :call LanguageClient#textDocument_references()<CR>
    nnoremap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
    nnoremap <leader>lc :call LanguageClient#textDocument_completion()<CR>
    nnoremap <leader>fix :call LanguageClient#textDocument_codeAction()<CR>
    nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
    nnoremap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
    nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
endfunction()

augroup LSP
    autocmd!
    autocmd FileType h,hpp,cpp,c call SetLSPShortcuts()
augroup END

nnoremap <Leader>ss :only<CR>:FSSplitRight<CR>

nnoremap <Leader>pc :pc<Cr>
nnoremap <Tab> :tabnext<CR>

"buffer mapping
nnoremap <Leader>bb :Buffers<CR>
nnoremap <Leader>bd :bd<CR>
nnoremap <Leader>bo :BufOnly<CR>
nnoremap <Leader>bp :bp<CR>
nnoremap <Leader>bn :bn<CR>

"tab mapping
" #gt to go to n tab
nnoremap <Leader>tc :tabclose<CR>
nnoremap <Leader>tp :tabp<CR>
nnoremap <Leader>tt :tabs<CR>:tabn 
nnoremap <Leader>tn :tabn<CR>
nnoremap <Leader>tN :tabnew<CR>
nnoremap <Leader>te :tabe 
nnoremap <Leader>to :tabonly<CR>

" window mapping
nnoremap <Leader>wc :close<CR>
nnoremap <Leader>wv :wincmd v<CR>
nnoremap <Leader>ws :wincmd s<CR>
nnoremap <Leader>wo :only<CR>

" file mapping
nnoremap <Leader>fs :w<CR>
nnoremap <Leader>ff :FZF<CR>

" quickfix
nnoremap <Leader>cc :cc<CR>
nnoremap <Leader>cn :cn<CR>
nnoremap <Leader>cp :cp<CR>

nnoremap <Leader>pc :pc<CR>
nnoremap <Leader>pros :Prosession .<CR>

"nnoremap <Leader>te :belowright sp +te <CR> :resize 12<CR>i
"nnoremap <Leader>ter :!terminal -cd $PWD<CR>

nnoremap <Leader>sl :FSSplitLeft<CR>
nnoremap <Leader>sr :FSSplitRight<CR>
nnoremap <Leader>sh :FSHere<CR>
nnoremap <Leader>rc :e $MYVIMRC<CR>
nnoremap <Leader>rl :so $MYVIMRC<CR>
nnoremap <Leader>w :w<CR>
nnoremap <m-j> <C-w><C-j>
nnoremap <m-k> <C-w><C-k>
nnoremap <m-h> <C-w><C-h>
nnoremap <m-l> <C-w><C-l>
nnoremap <Leader>n :noh<CR>
tnoremap <Esc> <C-\><C-n>
tnoremap <M-[> <Esc>
tnoremap <C-v><Esc> <Esc>


set cmdheight=2
let g:echodoc#enable_at_startup = 1

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

let g:LanguageClient_serverCommands = {
    \ 'c': ['clangd'],
    \ 'h': ['clangd'],
    \ 'hpp': ['clangd'],
    \ 'cpp': ['clangd'],
    \ }

let g:deoplete#enable_at_startup = 1
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif

command! BufOnly silent! execute "%bd|e#|bd#"

" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" LanguageClient for every language
Plug 'autozimu/LanguageClient-neovim', {
            \ 'branch': 'next',
            \ 'do': 'bash install.sh',
            \ }

" snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

" function signature
Plug 'Shougo/echodoc.vim'

" file searcher
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"plug for session
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'

"plugin for switch to header
Plug 'derekwyatt/vim-fswitch'

" cpp highlighting
Plug 'bfrg/vim-cpp-modern'

" theme
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
fefefefefef
call plug#end()

colorscheme gruvbox

