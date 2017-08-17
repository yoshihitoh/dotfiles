" Initialize:
"-------------------------------------------------------------------------------

" Platform detect helper
let s:is_windows = has('win32') || has('win64')

function! IsWindows() abort
  return s:is_windows
endfunction

" Exchange path separator.
if IsWindows()
   set shellslash
endif

" Ensure cache directory of dein
let $CACHE = expand('~/.cache')

if !isdirectory(expand($CACHE))
  call mkdir(expand($CACHE), 'p')
endif

" Load dein.
let s:dein_dir = finddir('dein.vim', '.;')
" let s:dein_dir = '~/.cache/dein/repos/github.com/Shougo/dein.vim'
if s:dein_dir != '' || &runtimepath !~ '/dein.vim'
  if s:dein_dir == '' && &runtimepath !~ '/dein.vim'
    let s:dein_dir = expand('$CACHE/dein')
          \. '/repos/github.com/Shougo/dein.vim'
    if !isdirectory(s:dein_dir)
      execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
    endif
  endif
  execute ' set runtimepath^=' . substitute(
        \ fnamemodify(s:dein_dir, ':p') , '/$', '', '')

  " execute ' set runtimepath^=' . s:dein_dir
endif

" Set Leader
let mapleader = "\<Space>"
