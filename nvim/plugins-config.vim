" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

" NERDCommenter
let g:NERDCreateDefaultMappings=1

" Nord Theme config
let g:nord_uniform_status_lines=1
let g:nord_uniform_diff_background=1
" Lightlane
"let g:lightline.component_expand = {
      "\ 'asyncrun_status': 'lightline#asyncrun#status'
"}
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
      \ 'colorscheme': 'nord',
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
      "let fileIcon = strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() . ' ' : ''
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

" coc
let g:coc_global_extensions = [
      \ 'coc-tsserver',
      \ 'coc-webview',
      \ 'coc-markdown-preview-enhanced',
      \ 'coc-json',
      \ 'coc-yaml',
      \ 'coc-html',
      \ 'coc-lists',
      \ 'coc-css',
      \ 'coc-styled-components',
      \ 'coc-jest',
      \ 'coc-lua',
      \ 'coc-python'
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

" disable italic for dracula
let g:dracula_italic = 0

let $FZF_DEFAULT_OPTS='--layout=reverse'
