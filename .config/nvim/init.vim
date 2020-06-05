" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

filetype indent on
filetype plugin on

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-scripts/vim-auto-save'
Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'sukima/xmledit'
Plug 'vhdirk/vim-cmake'
Plug 'ncm2/float-preview.nvim'
Plug 'sbdchd/neoformat'
Plug 'airblade/vim-gitgutter' 
Plug 'tpope/vim-fugitive'

" colorschemes
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'rafi/awesome-vim-colorschemes'

call plug#end()

set mouse=a
" установить keymap, чтобы по Ctrl+^ переключался на русский и обратно
set keymap=russian-jcukenwin 
" по умолчанию - латинская раскладка
set iminsert=0
" по умолчанию - латинская раскладка при поиске
set imsearch=0
" игнорировать регистр при поиске
set ic
" подсвечивать поиск
set hls
" использовать инкрементальный поиск
set is

" Indent settings
set tabstop=8 
set softtabstop=0 
set expandtab 
set shiftwidth=4  
set smarttab

" установить шрифт Courier New Cyr
" настраиваю для работы с русскими словами (чтобы w, b, * понимали
" русские слова)
set iskeyword=@,48-57,_,192-255
" отображение выполняемой команды
set showcmd 
" перенос по словам, а не по буквам
set linebreak
set dy=lastline

set clipboard=unnamedplus

" disable default preview window
set completeopt-=preview
set relativenumber

let g:auto_save = 1

let g:NERDTreeDirArrowExpandable = '   '
let g:NERDTreeDirArrowCollapsible = '   '

let g:plugin_name="xmledit-1.9.1"

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<c-a>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-K>"

let g:float_preview#docked=0

syntax on
colorscheme default


" Gitgutter settings
autocmd BufReadPost *.cpp :GitGutterSignsDisable
"""""""""""""""""""

if has('nvim') || has('termguicolors')
  set termguicolors
endif

" mapping
map <C-n> :NERDTreeToggle<CR>
noremap <silent><buffer> <F9> :exec 'source '.bufname('%')<CR>
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l
