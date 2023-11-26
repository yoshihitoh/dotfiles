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

" filetype based configurations
augroup vimrc
  autocmd Filetype terraform setlocal expandtab sts=2 sw=2 ts=2
  autocmd Filetype tf setlocal expandtab sts=2 sw=2 ts=2
  autocmd Filetype sh setlocal expandtab sts=2 sw=2 ts=2
augroup END
