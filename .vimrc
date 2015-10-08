syntax enable
set number
set ruler
set list
set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%
set cursorline
set incsearch
set hlsearch
set autoindent
set tabstop=4
set shiftwidth=4
set showmatch
set showcmd
set nobackup

nnoremap <ESC><ESC> :nohlsearch<CR><ESC>
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>

""
"" NeoBundle
""
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'Shougo/neocomplete'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

""
"" quickrun
""
let g:quickrun_config = {
\   "_" : {
\       "outputter/buffer/split" : ":botright 8sp",
\       "outputter/buffer/into" : 0,
\   },
\   'tex': {
\       'command': 'ptex2pdf',
\       'exec': ['%c -l %s', 'open %s:r.pdf'],
\   },
\}
