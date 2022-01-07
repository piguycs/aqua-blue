" PLUG - Plugin Manager
call plug#begin('$HOME/.local/share/nvim/plugged')
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'

" LIGHTLINE - A better line at the bottom
Plug 'https://github.com/itchyny/lightline.vim.git'

" ONEDARK - Theme
Plug 'https://github.com/joshdick/onedark.vim.git'

" EMMET - For HTML AutoCompletion
Plug 'mattn/emmet-vim'

" BETTER SYNTAX SUPPORT
Plug 'sheerun/vim-polyglot'

" Auto Closing Brackets and auto delete closing bracket
Plug 'https://github.com/Raimondi/delimitMate'

call plug#end()

" Complete brackets, etc
inoremap " ""<left>
inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O

" Tab Size
set tabstop=2
set shiftwidth=2

" Line numbers
set number
set relativenumber

" THEMING - Lightline
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo'],
      \              [ 'percent' ], 
      \              [ 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" THEMING - Colours
set noshowmode " Hides --INSERT--
highlight LineNrabove ctermfg=darkgray  
highlight LineNrbelow ctermfg=darkgray  
highlight LineNr ctermfg=yellow  
highlight Comment cterm=italic
" highlight Comment ctermfg=darkgray
