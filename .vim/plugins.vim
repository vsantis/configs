call plug#begin('~/.vim/plugged')

" syntax
Plug 'sheerun/vim-polyglot'

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'

" themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'overcache/NeoSolarized'
Plug 'dracula/vim', { 'name': 'dracula' }

" tree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" tmux
Plug 'preservim/vimux'
Plug 'christoomey/vim-tmux-navigator'

" ide
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()
