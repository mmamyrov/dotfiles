syntax on

"== Plugins =="
" YCM
" NerdTree
" vim-ripgrep
" quickfix-reflector
" ctrlP
" Vim airline
" Vim fugitive
" vim-polyglot
" Vim Prettier
" undotree

"== Start pathogen =="
execute pathogen#infect()
filetype plugin indent on
call pathogen#helptags()

"== Medet Settings =="
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set ignorecase
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set relativenumber
set showmatch
set hidden
set mouse=a

" Aesthetics 
colorscheme gruvbox
set background=dark
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

if executable('rg')
    let g:rg_derive_root='true'
endif
let g:rg_command = 'rg --vimgrep -S'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25
let g:ctrlp_use_caching=0
set completeopt+=popup "YCM popup preview

"remap leader to Space 
let mapleader=" " 
nnoremap <SPACE> <Nop>

" Window management
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>


nnoremap <leader>u :UndotreeShow<CR>
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>
nnoremap <Leader>ps :Rg<SPACE>
nmap <leader>pf :CtrlP<CR>

" nerdtree
 nnoremap <Leader>pt :NERDTreeToggle<Enter>
 nnoremap <silent> <Leader>pv :NERDTreeFind<CR>
 

" move lines up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
