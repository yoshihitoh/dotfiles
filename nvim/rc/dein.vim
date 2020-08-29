set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

let s:toml_path = resolve(expand('~/.config/nvim/rc/' . 'dein.toml'))
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#load_toml(s:toml_path, {'lazy': 0})

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif
