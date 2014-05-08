if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc.vim', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ },
\ }

" NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler.vim'
" NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Lokaltog/vim-easymotion', '09c0cea8'
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}

NeoBundle 'tyru/caw.vim'
" NeoBundle 'scrooloose/nerdtree'
" NeoBundle 'Lokaltog/powerline'
" NeoBundle 'thinca/vim-quickrun'
" NeoBundle 'marijnh/tern_for_vim'

NeoBundle 'mattn/emmet-vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'taichouchou2/html5.vim'
" NeoBundle 'taichouchou2/vim-javascript'
NeoBundle 'kchmck/vim-coffee-script'

NeoBundle 'jelera/vim-javascript-syntax'
" NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundle 'bigfish/vim-js-context-coloring'
NeoBundle 'cakebaker/scss-syntax.vim'

NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
NeoBundle 'Align'

NeoBundle 'gurisugi/microtemplate.vim'
NeoBundle 'motemen/xslate-vim'

NeoBundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on
NeoBundleCheck 

set runtimepath+=~/.vim/
runtime! userautoload/*.vim

set laststatus=2
set rtp+=~/.vim/neobundle/powerline/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'

