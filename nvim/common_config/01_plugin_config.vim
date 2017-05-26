" Plugins are managed by NeoBundle. Once VIM is open run :NeoBundleInstall to
" install plugins.

" Required:
call dein#begin(expand('~/.config/nvim/plugins/'))

" Let dein manage dein
" Required:
  call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
" Plugins requiring no additional configuration or keymaps
  call dein#add("tpope/vim-abolish.git")
  call dein#add("tpope/vim-classpath.git")
  call dein#add("tpope/vim-cucumber.git")
  call dein#add("tpope/vim-dispatch.git")
  call dein#add("tpope/vim-endwise.git")
  call dein#add("tpope/vim-fireplace.git")
  call dein#add("tpope/vim-fugitive.git")
  call dein#add("tpope/vim-git.git")
  call dein#add("tpope/vim-haml.git")
  call dein#add("tpope/vim-markdown.git")
  call dein#add("tpope/vim-rails.git")
  call dein#add("tpope/vim-rake.git")
  call dein#add("tpope/vim-repeat.git")
  call dein#add("tpope/vim-surround.git")
  call dein#add("tpope/vim-unimpaired.git")

"" Run your pytest magic.
  call dein#add("alfredodeza/pytest.vim.git")
  call dein#add("vim-airline/vim-airline.git")
  call dein#add("christoomey/vim-tmux-navigator.git")
"" tab for completion
  call dein#add("ervandew/supertab.git")
"" Tabularize your buffer
  call dein#add("godlygeek/tabular.git")
"" Less css stuff
  call dein#add("groenewege/vim-less.git")
  call dein#add("digitaltoad/vim-jade.git")
  call dein#add("elixir-lang/vim-elixir.git")

"" Python
  call dein#add("hdima/python-syntax.git")
  call dein#add("davidhalter/jedi.git")
  call dein#add("zchee/deoplete-jedi")

"" Hashicorp
  call dein#add("hashivim/vim-hashicorp-tools")
  call dein#add("hashivim/vim-nomadproject")
  call dein#add("fatih/vim-hclfmt")

"" Snippits
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

"" Yay.
  call dein#add("fatih/vim-go")
  call dein#add("nsf/gocode", {'rtp': 'nvim/'})
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-go', {'build': 'make'})
  call dein#add("kchmck/vim-coffee-script.git")
  call dein#add("Shougo/denite.nvim.git")
  call dein#add("maba/vim-markdown-preview.git")
  call dein#add("elmcast/elm-vim")

"" Nice class view
  call dein#add("majutsushi/tagbar.git")
  call dein#add("mattn/webapi-vim.git")
  call dein#add("mattn/gist-vim.git")
  call dein#add("michaeljsmith/vim-indent-object.git")
  call dein#add("mustache/vim-mustache-handlebars.git")
  call dein#add("oscarh/vimerl.git")
  call dein#add("pangloss/vim-javascript.git")
  call dein#add("rizzatti/dash.vim.git")
  call dein#add("rizzatti/funcoo.vim.git")
  call dein#add("rking/ag.vim.git")
  call dein#add("scrooloose/nerdtree.git")
  call dein#add("w0rp/ale.git")
  call dein#add("sjl/gundo.vim.git")
  call dein#add("slim-template/vim-slim.git")
  call dein#add("tomtom/tcomment_vim.git")
  call dein#add("vim-ruby/vim-ruby.git")
  call dein#add("vim-scripts/L9.git")
  call dein#add("vim-scripts/ZoomWin.git")
  call dein#add("vim-scripts/matchit.zip")
  call dein#add("vim-scripts/paredit.vim")
  call dein#add("vim-scripts/ruby-matchit.git")
  call dein#add("wavded/vim-stylus.git")
  call dein#add("wting/rust.vim.git")
  call dein#add("thoughtbot/vim-rspec")
call dein#end()


" Autocomplete magic
" Use deoplete.
let g:deoplete#enable_at_startup = 1
set completeopt+=noselect

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


" Denite
    call denite#custom#var('grep', 'command', ['ag'])
    call denite#custom#var('grep', 'default_opts',
                    \ ['-i', '--vimgrep'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'pattern_opt', [])
    call denite#custom#var('grep', 'separator', ['--'])
    call denite#custom#var('grep', 'final_opts', [])

    nnoremap <Leader>b :<C-U>Denite buffer<CR>
    nnoremap <Leader>t :<C-U>Denite file_rec buffer<CR>
    nnoremap <leader>T :<C-U>Denite grep<CR>
    nnoremap <C-p> :<C-U>Denite file_rec<CR>

    " respect the .gitignore
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


" Ale for catching syntax errors on save
    " let g:syntastic_enable_signs=1
    " let g:syntastic_quiet_messages = {'level': 'warning'}
    " " syntastic is too slow for haml and sass
    " let g:syntastic_mode_map = { 'mode': 'active',
    "                            \ 'active_filetypes': [],
    "                            \ 'passive_filetypes': ['haml','scss','sass'] }


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
 let g:syntastic_check_on_open = 1
 let g:syntastic_go_checkers = ['go','golint','gotype']
