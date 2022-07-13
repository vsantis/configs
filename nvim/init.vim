set number
syntax on
set autoread
set mouse=a
set numberwidth=1
set relativenumber
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set visualbell
set noerrorbells
set showmatch
set title
set nobackup
set noswapfile
set encoding=utf8
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"set background dark

so ~/.vim/plugins.vim
so ~/.vim/plugins-config.vim
so ~/.vim/maps.vim

"colorscheme NeoSolarized
"colorscheme gruvbox
"let g:gruvbox_contrast_dark = 'hard'
colorscheme dracula
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
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
