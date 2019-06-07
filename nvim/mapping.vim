" leader key
let mapleader="\<Space>"

" utilities
nnoremap <silent> <Leader>cd :<C-u>call <SID>cd_buffer_dir()<CR>

" denite
nnoremap <silent> <Leader>ub :<C-u>Denite buffer<CR>
nnoremap <silent> <Leader>um :<C-u>Denite file/old<CR>

" helpers
function! s:cd_buffer_dir() abort "{{{
  let filetype = getbufvar(bufnr('%'), '&filetype')
  if filetype ==# 'vimfiler'
    let dir = getbufvar(bufnr('%'), 'vimfiler').current_dir
  elseif filetype ==# 'vimshell'
    let dir = getbufvar(bufnr('%'), 'vimshell').save_dir
  else
    let dir = isdirectory(bufname('%')) ?
          \ bufname('%') : fnamemodify(bufname('%'), ':p:h')
  endif

  execute 'lcd' fnameescape(dir)
endfunction"}}}
