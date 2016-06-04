"
" Windows:
"---------------------------------------------------------------------------
"

" Rust path
let g:rustc_path = "C:/Program Files/Rust stable MSVC 1.9/bin/rustc.exe"

" Windows環境でRustをQuickRunするための回避策
let g:quickrun_config =  get(g:, 'quickrun_config', {})
let g:quickrun_config['rust'] = {
            \ 'command': 'rustc',
            \ 'exec': ['%c %o %s -o %S:p:r.exe', '%S:p:r.exe %a'],
            \ 'tempfile': '%{tempname()}.rs',
            \ 'hook/sweep/files': '%S:p:r',
            \ }

