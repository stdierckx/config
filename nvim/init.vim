

" Specify a directory for plugins.
call plug#begin(stdpath('data') . '/plugged')

" Specify your required plugins here.
Plug 'liuchengxu/vim-better-default'

" Optional useful plugins I highly recommend.
Plug 'tpope/vim-fireplace'
Plug 'easymotion/vim-easymotion'
Plug 'Shougo/deoplete.nvim'
Plug 'ncm2/float-preview.nvim'
"Plug 'jiangmiao/auto-pairs', { 'tag': 'v2.0.0' }
""Plug 'w0rp/ale'
"Plug 'guns/vim-sexp'
"Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-dispatch'
Plug 'clojure-vim/vim-jack-in'
Plug 'radenling/vim-dispatch-neovim'
Plug 'dense-analysis/ale'
Plug 'vim-scripts/paredit.vim'
Plug 'kien/rainbow_parentheses.vim'

" I skipped vim-clap but feel free to add it!

" Conjure! :D
Plug 'Olical/conjure', { 'tag': 'v4.3.1' }

" Initialize plugin system.
call plug#end()


let g:gruvbox_italic=1
colorscheme gruvbox

" Configuration for various plugins.
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('keyword_patterns', {'clojure': '[\w!$%&*+/:<=>?@\^_~\-\.#]*'})
set completeopt-=preview

let g:float_preview#docked = 0
let g:float_preview#max_width = 80
let g:float_preview#max_height = 40

let g:ale_linters = {
      \ 'clojure': ['clj-kondo', 'joker']
      \}

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)


let mapleader=" "
let maplocalleader=","
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

nnoremap <leader>n :NERDTreeToggle<CR>
tnoremap <Esc> <C-\><C-n>:bp<CR>
let g:ale_linters = {
      \ 'javascript': ['standard'],
      \ 'clojure': ['clj-kondo', 'joker']
      \}

let g:airline_powerline_fonts = 1

set mouse=a

