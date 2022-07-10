let mapleader=" "

" shorter commands
cnoreabbrev tree NERDTreeToggle
cnoreabbrev find NERDTreeFind

" split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" plugs
map <Leader>tf :NERDTreeFind<CR>
map <Leader>tt :NERDTreeToggle<CR>
"map <Leader>p :Files<CR>
map <Leader>ag :Ag<CR>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>

" tmux navigation
nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

" remap keys for goto
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" buffers
map <Leader>ob :Buffers<cr>

" vim-plug
map <Leader>pi :PlugInstall<cr>
map <Leader>pc :PlugClean<cr>

" coc-prettier
map <Leader>f :Prettier<CR>
