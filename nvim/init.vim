if &compatible
  set nocompatible
endif
set runtimepath+=/home/james/.local/share/dein/repos/github.com/Shougo/dein.vim


runtime! custom_preconfig/*.vim
runtime! common_config/*.vim
runtime! custom_config/*.vim

" if dein#load_state('/home/james/.local/share/dein')
"   call dein#begin('/home/james/.local/share/dein')
" 
"   " Let dein manage dein
"   " Required:
"   call dein#add('/home/james/.local/share/dein/repos/github.com/Shougo/dein.vim')
" 
" 
"   " Required:
"   call dein#end()
"   call dein#save_state()
" endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

nmap , <leader>

colorscheme wombat256
