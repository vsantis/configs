call plug#begin('~/.config/nvim/plugged')

" syntax
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/pylint.vim'
"Plug 'pangloss/vim-javascript'
"Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
"Plug 'jparise/vim-graphql'

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'albertomontesg/lightline-asyncrun'

" themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'overcache/NeoSolarized'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arcticicestudio/nord-vim'

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
Plug 'Yggdroot/indentLine'

call plug#end()
