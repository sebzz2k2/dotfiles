set nocompatible
filetype on
filetype plugin on
filetype indent on
set number
set shiftwidth=4
set tabstop=2
set expandtab
set nobackup
set scrolloff=10
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" plugins
call plug#begin('~/.vim/plugged')
  Plug 'dense-analysis/ale'
  Plug 'preservim/nerdtree'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'ryanoasis/vim-devicons'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install' }
  Plug 'junegunn/fzf.vim'
  Plug 'voldikss/vim-floaterm'

call plug#end()


syntax enable
colorscheme dracula
let g:coc_disable_startup_warning = 1

" mappings
let mapleader = ","
map <Leader><Space> :NERDTreeToggle<CR>
nmap <leader>tt :below terminal<CR>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

nnoremap <C-l> :Lines<CR>

nnoremap <C-p> :Files<CR>
nnoremap <C-f> :Rg<CR>
nnoremap <C-b> :Buffers<CR>

nnoremap <C-v> :vsplit<CR>
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END


" status-line
set statusline=
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%
set laststatus=2
