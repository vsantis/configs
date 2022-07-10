set number
set mouse=a
set numberwidth=1
syntax on
set relativenumber

so ~/.vim/plugins.vim
so ~/.vim/plugins-config.vim
so ~/.vim/maps.vim

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
set laststatus=2
set noshowmode
set clipboard=unnamedplus
set guicursor=n-v-c-i:block

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
