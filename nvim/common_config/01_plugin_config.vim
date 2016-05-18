" Plugins are managed by NeoBundle. Once VIM is open run :NeoBundleInstall to
" install plugins.

call neobundle#begin(expand('~/.vim/bundle/'))
 " Let NeoBundle manage NeoBundle
 NeoBundleFetch 'Shougo/neobundle.vim'

" Plugins requiring no additional configuration or keymaps
  NeoBundle "tpope/vim-abolish.git"
  NeoBundle "tpope/vim-classpath.git"
  NeoBundle "tpope/vim-cucumber.git"
  NeoBundle "tpope/vim-dispatch.git"
  NeoBundle "tpope/vim-endwise.git"
  NeoBundle "tpope/vim-fireplace.git"
  NeoBundle "tpope/vim-fugitive.git"
  NeoBundle "tpope/vim-git.git"
  NeoBundle "tpope/vim-haml.git"
  NeoBundle "tpope/vim-markdown.git"
  NeoBundle "tpope/vim-rails.git"
  NeoBundle "tpope/vim-rake.git"
  NeoBundle "tpope/vim-repeat.git"
  NeoBundle "tpope/vim-surround.git"
  NeoBundle "tpope/vim-unimpaired.git"

"" Run your pytest magic.
  NeoBundle "alfredodeza/pytest.vim.git"
  NeoBundle "bling/vim-airline.git"
  NeoBundle "christoomey/vim-tmux-navigator.git"
"" Nice lookups and competion
  NeoBundle "davidhalter/jedi-vim.git"
"" tab for completion
  NeoBundle "ervandew/supertab.git"
"" Tabularize your buffer
  NeoBundle "godlygeek/tabular.git"
"" Less css stuff
  NeoBundle "groenewege/vim-less.git"
  NeoBundle "digitaltoad/vim-jade.git"
  NeoBundle "elixir-lang/vim-elixir.git"
  NeoBundle "hdima/python-syntax.git"
  NeoBundle "Shougo/neosnippet"
"" Yay.
  NeoBundle "fatih/vim-go"
  NeoBundle "kchmck/vim-coffee-script.git"
  NeoBundle "kien/ctrlp.vim.git"
  NeoBundle "maba/vim-markdown-preview.git"
  NeoBundle "elmcast/elm-vim"

"" Nice class view
  NeoBundle "majutsushi/tagbar.git"
  NeoBundle "mattn/webapi-vim.git"
  NeoBundle "mattn/gist-vim.git"
  NeoBundle "michaeljsmith/vim-indent-object.git"
  NeoBundle "mustache/vim-mustache-handlebars.git"
  NeoBundle "oscarh/vimerl.git"
  NeoBundle "pangloss/vim-javascript.git"
  NeoBundle "rizzatti/dash.vim.git"
  NeoBundle "rizzatti/funcoo.vim.git"
  NeoBundle "rking/ag.vim.git"
  NeoBundle "scrooloose/nerdtree.git"
  NeoBundle "scrooloose/syntastic.git"
  NeoBundle "sjl/gundo.vim.git"
  NeoBundle "slim-template/vim-slim.git"
  NeoBundle "tomtom/tcomment_vim.git"
  NeoBundle "vim-ruby/vim-ruby.git"
  NeoBundle "vim-scripts/L9.git"
  NeoBundle "vim-scripts/ZoomWin.git"
  NeoBundle "vim-scripts/matchit.zip"
  NeoBundle "vim-scripts/paredit.vim"
  NeoBundle "vim-scripts/ruby-matchit.git"
  NeoBundle "wavded/vim-stylus.git"
  NeoBundle "wting/rust.vim.git"
  NeoBundle 'thoughtbot/vim-rspec'
call neobundle#end()


 " Vim airline configs
  let g:airline_theme = 'dark'
  let g:airline_powerline_fonts = 1
  let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }

" Easy motion config

"Supertab code completion"
  let g:SuperTabContextDefaultCompletionType = "<c-n>"


" Dash Searching"
    nmap <Leader>qs <Plug>DashSearch
    nmap <Leader>qa <Plug>DashGlobalSearch


" CtrlP
    nnoremap <Leader>b :<C-U>CtrlPBuffer<CR>
    nnoremap <Leader>t :<C-U>CtrlP<CR>
    nnoremap <Leader>T :<C-U>CtrlPTag<CR>
    nnoremap <C-p> :<C-U>CtrlP<CR>

    " respect the .gitignore
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
    let g:ctrlp_switch_buffer = '0' " Dont jump me to already open file in another buffer; let me have mulitple copies
    "

" Ruby
    au BufNewFile,BufRead *.rb set filetype=ruby

" Go
    au BufNewFile,BufRead *.go set filetype=go

" Slim
    au BufNewFile,BufRead *.slim set filetype=slim

" Less
    au BufNewFile,BufRead *.less set filetype=less

" Handlebars, Mustache, and Friends
    au  BufNewFile,BufRead *.mustache,*.handlebars,*.hbs,*.hogan,*.hulk,*.hjs set filetype=html syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim

" Stylus
    au BufNewFile,BufRead *.styl set filetype=stylus

" Coffee script
    au BufNewFile,BufRead *.coffee set filetype=coffee

" AG aka The Silver Searcher
    nmap g/ :Ag!<space>
    nmap g* :Ag! -w <C-R><C-W><space>
    nmap ga :AgAdd!<space>
    nmap gn :cnext<CR>
    nmap gp :cprev<CR>
    nmap gq :ccl<CR>
    nmap gl :cwindow<CR>


" Tagbar for navigation by tags using CTags
    let g:tagbar_autofocus = 1
    map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
    map <Leader>. :TagbarToggle<CR>

" Markdown syntax highlighting
    augroup mkd
      autocmd BufNewFile,BufRead *.mkd      set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
      autocmd BufNewFile,BufRead *.md       set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
      autocmd BufNewFile,BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
    augroup END

" Markdown preview to quickly preview markdown files
  map <buffer> <Leader>mp :Mm<CR>

" NERDTree for project drawer
    let NERDTreeHijackNetrw = 0
    nmap <leader>g :NERDTreeToggle<CR>
    nmap <leader>G :NERDTreeFind<CR>


" Tabular for aligning text
    function! CustomTabularPatterns()
      if exists('g:tabular_loaded')
        AddTabularPattern! symbols         / :/l0
        AddTabularPattern! hash            /^[^>]*\zs=>/
        AddTabularPattern! chunks          / \S\+/l0
        AddTabularPattern! assignment      / = /l0
        AddTabularPattern! comma           /^[^,]*,/l1
        AddTabularPattern! colon           /:\zs /l0
        AddTabularPattern! options_hashes  /:\w\+ =>/
      endif
    endfunction

    autocmd VimEnter * call CustomTabularPatterns()

    " shortcut to align text with Tabular
    map <Leader>a :Tabularize<space>

" ZoomWin to fullscreen a particular buffer without losing others
    map <Leader>z :ZoomWin<CR>


" Unimpaired for keymaps for quicky manipulating lines and files
    " Bubble single lines
    nmap <C-Up> [e
    nmap <C-Down> ]e

    " Bubble multiple lines
    vmap <C-Up> [egv
    vmap <C-Down> ]egv


" Syntastic for catching syntax errors on save
    let g:syntastic_enable_signs=1
    let g:syntastic_quiet_messages = {'level': 'warning'}
    " syntastic is too slow for haml and sass
    let g:syntastic_mode_map = { 'mode': 'active',
                               \ 'active_filetypes': [],
                               \ 'passive_filetypes': ['haml','scss','sass'] }


" gist-vim for quickly creating gists
    if has("mac")
      let g:gist_clip_command = 'pbcopy'
    elseif executable("xclip")
      let g:gist_clip_command = 'xclip -selection clipboard'
    elseif executable("xsel")
      let g:gist_clip_command = 'xsel --clipboard -i'
    endif

    let g:gist_detect_filetype = 1
    let g:gist_open_browser_after_post = 1


" gundo for awesome undo tree visualization
    map <Leader>h :GundoToggle<CR>


" rails.vim
    au FileType ruby map <Leader>oc :Rcontroller<Space>
    au FileType ruby map <Leader>ov :Rview<Space>
    au FileType ruby map <Leader>om :Rmodel<Space>
    au FileType ruby map <Leader>oh :Rhelper<Space>
    au FileType ruby map <Leader>oj :Rjavascript<Space>
    au FileType ruby map <Leader>os :Rstylesheet<Space>
    au FileType ruby map <Leader>oi :Rintegration<Space>


" surround for adding surround 'physics'
    " # to surround with ruby string interpolation
    let g:surround_35 = "#{\r}"
    " - to surround with no-output erb tag
    let g:surround_45 = "<% \r %>"
    " = to surround with output erb tag
    let g:surround_61 = "<%= \r %>"


" Clojure Highlighting"
  autocmd BufNewFile,BufRead *.clj set filetype=clojure
  autocmd BufNewFile,BufRead *.edn set filetype=clojure
  autocmd BufNewFile,BufRead *.cljs set filetype=clojure
  autocmd BufNewFile,BufRead *.cljx set filetype=clojure

  let g:paredit_leader= '\'
  let vimclojure#ParenRainbow  = 1

" Jade Highlighting"
  autocmd BufNewFile,BufRead *.jade set filetype=jade

" Scala Highlighting"
  autocmd BufNewFile,BufRead *.scala set filetype=scala

" Elixir plugin
  au BufNewFile,BufRead *.ex set filetype=elixir
  au BufNewFile,BufRead *.exs set filetype=elixir

" Rust!

" Easy async RSpec running
  let g:rspec_command = "Dispatch rspec --format=progress --no-profile {spec}"
  nmap <Leader>rc :wa<CR> :call RunCurrentSpecFile()<CR>
  nmap <Leader>rn :wa<CR> :call RunNearestSpec()<CR>
  nmap <Leader>rl :wa<CR> :call RunLastSpec()<CR>
  nmap <Leader>ra :wa<CR> :call RunAllSpecs()<CR>

" Python Completion"
  autocmd FileType python set completeopt-=preview

" Go
 au FileType go nmap <leader>r <Plug>(go-run)
 au FileType go nmap <leader>b <Plug>(go-build)
 au FileType go nmap <leader>t <Plug>(go-test)
 au FileType go nmap <leader>c <Plug>(go-coverage)
 let g:go_highlight_functions = 1
 let g:go_highlight_methods = 1
 let g:go_highlight_structs = 1
 let g:go_highlight_interfaces = 1
 let g:go_highlight_operators = 1
 let g:go_highlight_build_constraints = 1
 let g:go_fmt_command = "goimports"
