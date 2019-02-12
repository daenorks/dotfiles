" leader
let mapleader = " "

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
nnoremap <Leader>w1 :wincmd 1<CR>
nnoremap <Leader>w2 :wincmd 2<CR>
nnoremap <m-j> <C-w><C-j>
nnoremap <m-k> <C-w><C-k>
nnoremap <m-h> <C-w><C-h>
nnoremap <m-l> <C-w><C-l>

" file mapping
nnoremap <Leader>fs :w<CR>
nnoremap <Leader>ff :FZF<CR>

" quickfix
nnoremap <Leader>cc :cc<CR>
nnoremap <Leader>cn :cn<CR>
nnoremap <Leader>cp :cp<CR>

nnoremap <Leader>pc :pc<CR>

"nnoremap <Leader>te :belowright sp +te <CR> :resize 12<CR>i
"nnoremap <Leader>ter :!terminal -cd $PWD<CR>

"edit config file
nnoremap <Leader>rc :FZF ~/dotfiles/vim/init/<CR>
nnoremap <Leader>rl :so $MYVIMRC<CR>

"quick shortcut
nnoremap <Leader>w :w<CR>
nnoremap <Leader>pc :pc<Cr>
nnoremap <Leader>n :noh<CR>

"terminal binding
tnoremap <Esc> <C-\><C-n>
tnoremap <M-[> <Esc>
tnoremap <C-v><Esc> <Esc>

" FSSwitch
nnoremap <Leader>sl :FSSplitLeft<CR>
nnoremap <Leader>sr :FSSplitRight<CR>
nnoremap <Leader>sh :FSHere<CR>
nnoremap <Leader>ss :only<CR>:FSSplitRight<CR>

" Prosession
nnoremap <Leader>pros :Prosession .<CR>

"LSP
function! SetLSPShortcuts()
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

" neosnippet
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

