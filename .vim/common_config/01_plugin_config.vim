" Plugins are managed by NeoBundle. Once VIM is open run :NeoBundleInstall to
" install plugins.

call neobundle#begin(expand('~/.vim/bundle/'))
 " Let NeoBundle manage NeoBundle
 NeoBundleFetch 'Shougo/neobundle.vim'

" Plugins requiring no additional configuration or keymaps
  NeoBundle "https://github.com/tpope/vim-abolish.git"
  NeoBundle "https://github.com/tpope/vim-classpath.git"
  NeoBundle "https://github.com/tpope/vim-cucumber.git"
  NeoBundle "https://github.com/tpope/vim-dispatch.git"
  NeoBundle "https://github.com/tpope/vim-endwise.git"
  NeoBundle "https://github.com/tpope/vim-fireplace.git"
  NeoBundle "https://github.com/tpope/vim-fugitive.git"
  NeoBundle "https://github.com/tpope/vim-git.git"
  NeoBundle "https://github.com/tpope/vim-haml.git"
  NeoBundle "https://github.com/tpope/vim-markdown.git"
  NeoBundle "https://github.com/tpope/vim-rails.git"
  NeoBundle "https://github.com/tpope/vim-rake.git"
  NeoBundle "https://github.com/tpope/vim-repeat.git"
  NeoBundle "https://github.com/tpope/vim-surround.git"
  NeoBundle "https://github.com/tpope/vim-unimpaired.git"

  NeoBundle "https://github.com/Lokaltog/vim-easymotion.git"
  NeoBundle "https://github.com/alfredodeza/pytest.vim.git"
  NeoBundle "https://github.com/amdt/vim-niji.git"
  NeoBundle "https://github.com/bling/vim-airline.git"
  NeoBundle "https://github.com/christoomey/vim-tmux-navigator.git"
  NeoBundle "https://github.com/davidhalter/jedi-vim.git"
  NeoBundle "https://github.com/derekwyatt/vim-scala.git"
  NeoBundle "https://github.com/digitaltoad/vim-jade.git"
  NeoBundle "https://github.com/elixir-lang/vim-elixir.git"
  NeoBundle "https://github.com/ervandew/supertab.git"
  NeoBundle "https://github.com/godlygeek/tabular.git"
  NeoBundle "https://github.com/groenewege/vim-less.git"
  NeoBundle "https://github.com/guns/vim-clojure-static.git"
  NeoBundle "https://github.com/hdima/python-syntax.git"
  NeoBundle "https://github.com/jnwhiteh/vim-golang.git"
  NeoBundle "https://github.com/kchmck/vim-coffee-script.git"
  NeoBundle "https://github.com/kien/ctrlp.vim.git"
  NeoBundle "https://github.com/maba/vim-markdown-preview.git"
  NeoBundle "https://github.com/majutsushi/tagbar.git"
  NeoBundle "https://github.com/mattn/gist-vim.git"
  NeoBundle "https://github.com/mattn/webapi-vim.git"
  NeoBundle "https://github.com/michaeljsmith/vim-indent-object.git"
  NeoBundle "https://github.com/mustache/vim-mustache-handlebars.git"
  NeoBundle "https://github.com/oscarh/vimerl.git"
  NeoBundle "https://github.com/pangloss/vim-javascript.git"
  NeoBundle "https://github.com/rizzatti/dash.vim.git"
  NeoBundle "https://github.com/rizzatti/funcoo.vim.git"
  NeoBundle "https://github.com/rking/ag.vim.git"
  NeoBundle "https://github.com/scrooloose/nerdtree.git"
  NeoBundle "https://github.com/scrooloose/syntastic.git"
  NeoBundle "https://github.com/sjl/gundo.vim.git"
  NeoBundle "https://github.com/slim-template/vim-slim.git"
  NeoBundle "https://github.com/tomtom/tcomment_vim.git"
  NeoBundle "https://github.com/vim-ruby/vim-ruby.git"
  NeoBundle "https://github.com/vim-scripts/L9.git"
  NeoBundle "https://github.com/vim-scripts/ZoomWin.git"
  NeoBundle "https://github.com/vim-scripts/matchit.zip"
  NeoBundle "https://github.com/vim-scripts/paredit.vim"
  NeoBundle "https://github.com/vim-scripts/ruby-matchit.git"
  NeoBundle "https://github.com/wavded/vim-stylus.git"
  NeoBundle "https://github.com/wting/rust.vim.git"
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
    elseif has("unix")
      let g:gist_clip_command = 'xclip -selection clipboard'
    endif

    let g:gist_detect_filetype = 1
    let g:gist_open_browser_after_post = 1


" gundo for awesome undo tree visualization
    map <Leader>h :GundoToggle<CR>


" rails.vim, nuff' said
    map <Leader>oc :Rcontroller<Space>
    map <Leader>ov :Rview<Space>
    map <Leader>om :Rmodel<Space>
    map <Leader>oh :Rhelper<Space>
    map <Leader>oj :Rjavascript<Space>
    map <Leader>os :Rstylesheet<Space>
    map <Leader>oi :Rintegration<Space>


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