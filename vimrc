set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Essentials
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'scrooloose/nerdtree'
Plug 'trusktr/seti.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'

" HashiCorp Config Language (HCL)
Plug 'fatih/vim-hclfmt'

" HashiCorp Terraform
Plug 'hashivim/vim-terraform'

" Varnish Config Language (VCL)
Plug 'Clockworknet/vim-vcl'

" SystemD config
Plug 'Matt-Deacalion/vim-systemd-syntax'

" JS
" Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'othree/yajs.vim'
Plug 'posva/vim-vue'
Plug 'isRuslan/vim-es6'

" Elixir
Plug 'elixir-lang/vim-elixir'

" Postgres
Plug 'lifepillar/pgsql.vim'

" TOML
Plug 'cespare/vim-toml'

" Rust
Plug 'rust-lang/rust.vim'

" All of your Plugs must be added before the following line
call  plug#end()            " required
" filetype plugin indent on    " required

syntax on
colorscheme seti

" Powerline configuration
let g:airline_theme='simple'

set clipboard=unnamed
set backspace=2 " make backspace great again
set encoding=utf-8
set mouse=a " mouse
set term=xterm-256color
set termencoding=utf-8
set autoindent " indent on newline
set softtabstop=2 " default tab key amount
set tabstop=2 " default tab length
set laststatus=2 " show filename
set autoread " reload file on change
set number " show line number
set title
set hlsearch

" let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn|node_modules)$'

let g:jsx_ext_required = 0
let g:sql_type_default = 'pgsql'

let NERDTreeQuitOnOpen=1

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:vue_disable_pre_processors=1

nnoremap ˙ <C-W><C-H>
nnoremap ∆ <C-W><C-J>
nnoremap ˚ <C-W><C-K>
nnoremap ¬ <C-W><C-L>

inoremap ˙ <Esc><C-W><C-H>
inoremap ∆ <Esc><C-W><C-J>
inoremap ˚ <Esc><C-W><C-K>
inoremap ¬ <Esc><C-W><C-L>

nnoremap " :w!<Enter>

nnoremap <C-P> :Files<Enter>
nnoremap <C-\> :Rg<Enter>

" Show preview on Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview('right:50%'), <bang>0)

" Show preview on Ag
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview('right:50%'), <bang>0)

" Show preview on Files
command! -bang -nargs=* Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview('right:50%'), <bang>0)
