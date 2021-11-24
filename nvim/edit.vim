"
" Edit settings
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" indent
set smarttab
set expandtab
set autoindent smartindent
set modeline

set sw=4 ts=4 sts=4
set scrolloff=5

" highlight
set showmatch

set cpoptions-=m
set matchtime=1
set matchpairs+=<:>

" search
set ignorecase
set smartcase

" Ignore case on insert completion.
set infercase

" Change undo directory
set directory-=.
if v:version >= 703
  set undofile
  let &g:undodir=&directory
endif

" Don't create backup.
set nowritebackup
set nobackup
set noswapfile
set backupdir-=.

" C/C++ settings.
set cindent
set cinoptions=g-1

" AutoCmd
au BufNewFile,BufRead *.json        set tabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead *.rb          set tabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead *.scala       set tabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead *.yml         set tabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead *.yaml        set tabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead Vagrantfile   set tabstop=2 shiftwidth=2 expandtab ft=ruby
