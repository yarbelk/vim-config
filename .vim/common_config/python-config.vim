au FileType python let g:pymode = 1

au FileType python let g:pymode_indent = 1
" Don't run pylint every save.
let g:pymode_lint_write = 0

" key bindings
let g:pymode_run_key = '<leader>r'
let g:pymode_lint_cheker = "pep8,pylint"

" rope
let g:pymode_rope = 1
nmap <leader>j :RopeGotoDefinition<CR>

" Autocreate and open rope project
let g:pymode_rope_auto_project = 1

" Enable autoimport
let g:pymode_rope_enable_autoimport = 1

" global cache
let g:pymode_rope_autoimport_generate = 1
let g:pymode_rope_codeassist_maxfixes = 10
let g:pymode_rope_vim_completion = 1
let g:pymode_rope_guess_project = 0
let g:pymode_rope_always_show_complete_menu = 1
let g:pymode_rope_extended_complete = 1

" code folding
let g:pymode_folding = 0

" enable python motions ? guessing word_definition vs word-definition
let g:pymode_motion = 1

" VirtualEnv
let g:pymode_virtualenv = 1

" breakpoints 
let g:pymode_breakpoint = 1

"" Syntax
let g:pymode_syntax = 1

autocmd VimEnter * imap <expr> <Tab> pumvisible() ? "<C-N>" : "<Tab>"
autocmd VimEnter * imap <expr> <S-Tab> pumvisible() ? "<C-P>" : "<S-Tab>"
"
" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

let g:acp_completeoptPreview=1
