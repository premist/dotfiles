set nocompatible " vundle said so
filetype off " vundle said so

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" FZF
set rtp+=/usr/local/opt/fzf

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Essentials
Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'trusktr/seti.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'

" HashiCorp Config Language (HCL)
Plugin 'fatih/vim-hclfmt'

" HashiCorp Terraform
Plugin 'hashivim/vim-terraform'

" Varnish Config Language (VCL)
Plugin 'Clockworknet/vim-vcl'

" SystemD config
Plugin 'Matt-Deacalion/vim-systemd-syntax'

" JS
" Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'othree/yajs.vim'
Plugin 'posva/vim-vue'
Plugin 'isRuslan/vim-es6'

" Elixir
Plugin 'elixir-lang/vim-elixir'

" Postgres
Plugin 'lifepillar/pgsql.vim'

" TOML
Plugin 'cespare/vim-toml'

" Rust
Plugin 'rust-lang/rust.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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
nnoremap <C-\> :Ag<Enter>

" Override Ag to Show preview
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview('right:50%'), <bang>0)

command! -bang -nargs=* Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview('right:50%'), <bang>0)
