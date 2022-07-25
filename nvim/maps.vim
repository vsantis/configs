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

" tmux navigation
nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

" tab navigation
nnoremap <silent> <Leader><C-p> :tabp<cr>
nnoremap <silent> <Leader><C-n> :tabn<cr>

" vim-plug
map <Leader>pi :PlugInstall<cr>
map <Leader>pc :PlugClean<cr>
