if &compatible
  set nocompatible
endif
set runtimepath^=~/.config/nvim/plugins/repos/github.com/Shougo/dein.vim

runtime! custom_preconfig/*.vim
runtime! common_config/*.vim
runtime! custom_config/*.vim

if dein#check_install()
  call dein#install()
endif

" for git, add spell checking and automatic wrapping at 72 columns
autocmd Filetype gitcommit setlocal spell textwidth=72

nmap , <leader>

colorscheme molokai
