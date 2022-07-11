set number
set mouse=a
set numberwidth=1
syntax on
set relativenumber
set encoding=utf8

so ~/.vim/plugins.vim
so ~/.vim/plugins-config.vim
so ~/.vim/maps.vim

"colorscheme NeoSolarized
"colorscheme gruvbox
"let g:gruvbox_contrast_dark = 'hard'
colorscheme dracula
highlight Normal ctermbg=NONE

if !has('gui_running')
	set t_Co=256
endif

set laststatus=2
set noshowmode
set clipboard=unnamedplus
"set guicursor=n-v:block
"et background=dark
" prettier
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

filetype plugin on
filetype plugin indent on

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" tabs size
set expandtab
set shiftwidth=2
set tabstop=2
