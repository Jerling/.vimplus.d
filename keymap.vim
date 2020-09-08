" General leader -> space
let maplocalleader = ","
imap jk <esc>
tmap JK <c-\><c-n>

" YouCompleteMe
" let g:ycm_key_list_stop_completion = ['<CR>']
"

" clever-f
map ] <Plug>(clever-f-repeat-forward)
map [ <Plug>(clever-f-repeat-back)

" quit
nnoremap <silent><leader>qq :wq<cr>
nnoremap <silent><leader>qa :wqa<cr>

nnoremap <silent><leader>fs :w<cr>
nnoremap <silent><leader>fa :wa<cr>

" vim-clap
nnoremap <silent><leader>fe :<C-U>Clap filer<cr>
nnoremap <silent><leader>bb :<C-u>Clap buffers<CR>
nnoremap <silent><leader>sr :<C-u>Clap grep<CR>
nnoremap <silent><leader>sf :<C-u>Clap files ++finder=rg --no-ignore --hidden --files<cr>
nnoremap <silent><leader>sg :<C-u>Clap gfiles<CR>
nnoremap <silent><leader>ss :<C-u>Clap grep2 ++query=<cr>
nnoremap <silent><leader>sa :<C-u>Clap grep ++query=<cword><cr>
nnoremap <silent><leader>fr :<C-u>Clap history<CR>
nnoremap <silent><leader>sw :<C-u>Clap windows<CR>
nnoremap <silent><leader>sl :<C-u>Clap loclist<CR>
nnoremap <silent><leader>su :<C-u>Clap git_diff_files<CR>
nnoremap <silent><leader>sc :<C-u>Clap command_history<CR>
nnoremap <silent><leader>so :<C-u>Clap command_history<CR>
nnoremap <silent><leader>c :Clap command<cr>
nnoremap <silent><leader>mm :Clap marks<cr>

" Buffer
nnoremap <silent><leader>bd :bd<cr>
nnoremap <silent><leader>bD :bwipe<cr>
nnoremap <silent><leader>bf :bfirst<cr>
nnoremap <silent><leader>bh :Startify<cr>
nnoremap <silent><leader>bl :blast<cr>
nnoremap <silent><leader>bn :bnext<cr>
nnoremap <silent><leader>bp :bprevious<cr>
nnoremap <silent><leader>bk :bdelete!<cr>
nnoremap <silent><leader>bo :BcloseOthers<CR>
command! BcloseOthers call BufCloseOthers()
function! BufCloseOthers()
	let l:currentBufNum   = bufnr("%")
	let l:alternateBufNum = bufnr("#")
	for i in range(1,bufnr("$"))
		if buflisted(i)
			if i!=l:currentBufNum
				execute("bdelete ".i)
			endif
		endif
	endfor
endfunction

" Help
source $VIMRUNTIME/ftplugin/man.vim
nnoremap <silent><leader>hM :Man <C-R>=expand("<cword>")<CR><CR>
vnoremap <silent><leader>hM :Man <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent><leader>hm :vert Man <C-R>=expand("<cword>")<CR><CR>
vnoremap <silent><leader>hm :vert Man <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent><leader>hp :set paste<cr>
vnoremap <silent><leader>hp :set paste<cr>
nnoremap <silent><leader>hP :set nopaste<cr>
vnoremap <silent><leader>hP :set nopaste<cr>

" Window
nnoremap <silent><leader>ww <C-W>w
nnoremap <silent><leader>wW <C-W>W
nnoremap <silent><leader>wc <C-W>c
nnoremap <silent><leader>wo <C-W>o
nnoremap <silent><leader>w2 <C-W>v
nnoremap <silent><leader>wh <C-W>h
nnoremap <silent><leader>wj <C-W>j
nnoremap <silent><leader>wl <C-W>l
nnoremap <silent><leader>wk <C-W>k
nnoremap <silent><leader>w= <C-W>=
nnoremap <silent><leader>ws <C-W>s
nnoremap <silent><leader>wv <C-W>v
nnoremap <silent><leader>wH <C-W>5< nnoremap <silent><leader>wL <C-W>5>
nnoremap <silent><leader>wJ :resize -5<cr>
nnoremap <silent><leader>wK :resize +5<cr>

" Session
nnoremap <silent><localleader>ss :SSave<cr>
nnoremap <silent><localleader>sl :SLoad<cr>
nnoremap <silent><localleader>sd :SDelete<cr>
nnoremap <silent><localleader>sc :SClose<cr>

nnoremap   <silent><leader>ot   :FloatermNew<CR>
tnoremap   <silent><leader>ot   <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent><leader>tt   :FloatermToggle<CR>
tnoremap   <silent><leader>tt   <C-\><C-n>:FloatermToggle<CR>
nnoremap   <silent><leader>tp   :FloatermPrev<CR>
tnoremap   <silent><leader>tp   <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent><leader>tn   :FloatermNext<CR>
tnoremap   <silent><leader>tn   <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent><leader>ts   :FloatermShow<CR>
tnoremap   <silent><leader>ts   <C-\><C-n>:FloatermShow<CR>
nnoremap   <silent><leader>th   :FloatermHide<CR>
tnoremap   <silent><leader>th   <C-\><C-n>:FloatermHide<CR>
nnoremap   <silent><leader>ta   :FloatermFirst<CR>
tnoremap   <silent><leader>ta   <C-\><C-n>:FloatermFirst<CR>
nnoremap   <silent><leader>te   :FloatermLast<CR>
tnoremap   <silent><leader>te   <C-\><C-n>:FloatermLast<CR>
nnoremap   <silent><leader>tk   :FloatermKill<CR>
tnoremap   <silent><leader>tk   <C-\><C-n>:FloatermKill<CR>
nnoremap   <silent><leader>tm   :FloatermSend<CR>
tnoremap   <silent><leader>tm   <C-\><C-n>:FloatermSend<CR>

" easymotion
map  <leader>jf <Plug>(easymotion-bd-f)
nmap <leader>jj <Plug>(easymotion-overwin-f)
map  <leader>jw <Plug>(easymotion-bd-w)
nmap <leader>jb <Plug>(easymotion-overwin-w>
map  <leader>jl <Plug>(easymotion-bd-jk) 
nmap <leader>jL <Plug>(easymotion-overwin-line)

" any-jump
nnoremap <silent><leader>ja :AnyJump<CR>
xnoremap <silent><leader>jv :AnyJumpVisual<CR>
nnoremap <silent><leader>jA :AnyJumpBack<CR>
nnoremap <silent><leader>jr :AnyJumpLastResults<CR>

" vimagit 
nnoremap <silent><leader>M :Magit<cr>

" Vista
nnoremap <silent><leader>V :Vista!!<cr>

" vim-mundo
nnoremap <silent><leader>fu :MundoToggle<cr>

" completor
function! Tab_Or_Complete() abort
  " If completor is already open the `tab` cycles through suggested completions.
  if pumvisible()
    return "\<C-N>"
  " If completor is not open and we are in the middle of typing a word then
  " `tab` opens completor menu.
  elseif col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^[[:keyword:][:ident:]]'
    return "\<C-R>=completor#do('complete')\<CR>"
  else
    " If we aren't typing a word and we press `tab` simply do the normal `tab`
    " action.
    return "\<Tab>"
  endif
endfunction
" Use `tab` key to select completions.  Default is arrow keys.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Tab> Tab_Or_Complete()

" vim-snipmate
imap jj <Plug>snipMateNextOrTrigger
smap jj <Plug>snipMateNextOrTrigger

" vim-lsp
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <Plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <Plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)

    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

" insert keymap like emacs
inoremap <C-w> <C-[>diwa
inoremap <C-h> <BS>
inoremap <C-d> <Del>
inoremap <C-k>  <ESC>d$a
inoremap <C-u> <C-G>u<C-U>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-a> <ESC>^i
inoremap <expr><C-e> pumvisible() ? "\<C-e>" : "\<End>"
"insert a newline
inoremap <C-O> <Esc>o
imap <C-S> <esc>:w<CR>
imap <C-Q> <esc>:wq<CR>

" command line alias
cnoremap <C-p> <Up>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>
cnoremap <C-t> <C-R>=expand("%:p:h") . "/" <CR>

" vim-youdao-translater
vnoremap <silent> <C-T> :<C-u>Ydv<CR>
nnoremap <silent> <C-T> :<C-u>Ydc<CR>
nnoremap <leader>yd :<C-u>Yde<CR>
