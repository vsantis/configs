" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

" NERDCommenter
let g:NERDCreateDefaultMappings=1

" Lightline
let g:lightline = {
      \ 'active': {
      \   'left': [['mode','paste'],['filename', 'gitbranch']],
      \   'right': [['filetype'],['percent','lineinfo'],['fileencoding'], ['asyncrun_status']]
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
      \   'gitbranch': 'FugitiveHead',
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \   'filename': 'LightlineFileName',
      \ },
      \ 'component_expand': {
      \   'asyncrun_status': 'lightline#asyncrun#status'
      \},
      \ 'colorscheme': 'dracula',
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
let g:NERDTreeGitStatusUseNerdFonts=1
let g:NERDTreeFileExtensionHighlightFullName=1
let g:NERDTreeExactMatchHighlightFullName=1
let g:NERDTreePatternMatchHighlighFullName=1

" tmux navigator
let g:tmux_navigator_no_mapping=1

autocmd FileType scss setl iskeyword+=@-@

" Better display for messages
set cmdheight=1

" diagnostic messages update time
set updatetime=300

" always show signcolumns
set signcolumn=yes

" disable italic for dracula
let g:dracula_italic = 0

let $FZF_DEFAULT_OPTS='--layout=reverse'
