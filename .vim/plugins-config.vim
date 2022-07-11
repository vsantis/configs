" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

" NERDCommenter
let g:NERDCreateDefaultMappings=1

" Lightlane
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'],[],[],['filename', 'gitbranch']],
      \   'right': [['lineinfo'],['percent'],['fileformat','fileencoding','filetype']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name',
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \   'filename': 'LightlineFileName'
      \ },
      \ 'colorscheme': 'gruvbox',
      \ 'subseparator': {
      \   'left': '|',
      \   'right': '|'
      \ }
      \}

function! MyFiletype()
      return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
      return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! LightlineFileName()
      let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
      let modified = &modified ? ' +' : ''
      return filename . modified
endfunction

" nerdtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'
let g:NerdTreeGitStatusUseNerdFonts=1

" tmux navigator
let g:tmux_navigator_no_mapping=1

" coc
let g:coc_global_extensions = [
      \ 'coc-tsserver',
      \ 'coc-webview',
      \ 'coc-markdown-preview-enhanced',
      \ 'coc-json',
      \ 'coc-yaml',
      \ 'coc-html',
      \ 'coc-lists'
      \]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
      let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
      let g:coc_global_extensions += ['coc-eslint']
endif

autocmd FileType scss setl iskeyword+=@-@

" Better display for messages
set cmdheight=1

" diagnostic messages update time
set updatetime=300

" always show signcolumns
set signcolumn=yes

let $FZF_DEFAULT_OPTS='--layout=reverse'
