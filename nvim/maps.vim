let mapleader=" "

" shorter commands
cnoreabbrev tree NERDTreeToggle
cnoreabbrev find NERDTreeFind
cnoreabbrev gstatus vertical G

" resize split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" nerdtre
map <Leader>tf :NERDTreeFind<CR>
map <Leader>tt :NERDTreeToggle<CR>
" fzf
map <Leader>ff :Files<CR>
map <Leader>fg :Rg<CR>
map <Leader>ob :Buffers<cr>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap <Leader>wq :wq<CR>

" map command to move code up or down

" tmux navigation
nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

" tab navigation
nnoremap <silent> <Leader><C-p> :tabp<cr>
nnoremap <silent> <Leader><C-n> :tabn<cr>

" remap keys for goto
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" remap keys for codeactions
nmap <Leader>do <Plug>(coc-codeaction)

" remap keys from rename symbol
nmap <Leader>rn <Plug>(coc-rename)

" vim-plug
map <Leader>pi :PlugInstall<cr>
map <Leader>pc :PlugClean<cr>

" coc
nnoremap <silent> K :call CocAction('doHover')<CR>

function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#float#has_float() == 0 && CocHasProvider('hover') == 1)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(500, 'ShowDocIfNoDiagnostic')
endfunction

autocmd CursorHoldI * :call <SID>show_hover_doc()
autocmd CursorHold * :call <SID>show_hover_doc()

" coc-lists
nnoremap <silent> <space>cd :<C-u>CocList diagnostics<cr>

" coc-prettier
map <Leader>f :Prettier<CR>
