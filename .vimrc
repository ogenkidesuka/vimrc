call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'

" Initialize plugin system
call plug#end()

" Visuals
colorscheme jellybeans
set guifont=Consolas:h11:cANSI
set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)
language en                 " sets the language of the messages / ui (vim)
" lightline config
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
" No alert
set visualbell
set t_vb=
" Indent highlight
let g:indent_guides_enable_on_vim_startup = 1
" Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
" Backspace fix
set backspace=indent,eol,start          " backspace deletes prev symbol
" folding
set foldmethod=indent
set nofoldenable
" hide panels
set guioptions-=m                       " menu
set guioptions-=T                       " toolbar
set guioptions-=r                       " scrollbar 
set guioptions-=L                       " NERDTree scrollbar
" Search settings
set incsearch	                        " incremental serach
set hlsearch	                        " highlight search result
set nu	                                " show string number

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]

" ale config
let g:ale_linters = {
      \   'python': ['flake8', 'pylint'],
      \}
let g:ale_fixers = {
      \    'python': ['yapf'],
      \}
let g:ale_fix_on_save = 1

" mappings
" folding toggle
nnoremap <space> za
" NERDTree
map <C-n> :NERDTreeToggle<CR>
" Close curr buffer
map <C-q> :close<CR>
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Remap for rename current word
nmap <F2> <Plug>(coc-rename)
" fix indents on f10
nmap <F10> :ALEFix<CR>
