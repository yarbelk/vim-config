" use 2 spaces for tabs (defaults)
  set expandtab tabstop=2 softtabstop=2 shiftwidth=2
  set smarttab

" indents - ruby
autocmd FileType python setlocal nowrap                  " don't wrap text
autocmd FileType python setlocal autoindent              " always set autoindenting on
autocmd FileType python setlocal tabstop=2               " <tab> inserts 2 spaces 
autocmd FileType python setlocal shiftwidth=2            " but an indent level is 2 spaces wide.
autocmd FileType python setlocal softtabstop=2           " <BS> over an autoindent deletes both spaces.
autocmd FileType python setlocal expandtab               " Use spaces, not tabs, for autoindent/tab key.

" indents - Python
autocmd FileType python setlocal nowrap                  " don't wrap text
autocmd FileType python setlocal autoindent              " always set autoindenting on
autocmd FileType python setlocal tabstop=4               " <tab> inserts 4 spaces 
autocmd FileType python setlocal shiftwidth=4            " but an indent level is 2 spaces wide.
autocmd FileType python setlocal softtabstop=4           " <BS> over an autoindent deletes both spaces.
autocmd FileType python setlocal expandtab               " Use spaces, not tabs, for autoindent/tab key.

" indents - javascript
autocmd FileType javascript setlocal nowrap                  " don't wrap text
autocmd FileType javascript setlocal autoindent              " always set autoindenting on
autocmd FileType javascript setlocal tabstop=2               " <tab> inserts 22spaces 
autocmd FileType javascript setlocal shiftwidth=2            " but an indent level is 2 spaces wide.
autocmd FileType javascript setlocal softtabstop=2           " <BS> over an autoindent deletes both spaces.
autocmd FileType javascript setlocal expandtab               " Use spaces, not tabs, for autoindent/tab key.

" indents - C
autocmd FileType C setlocal nowrap                  " don't wrap text
autocmd FileType C setlocal autoindent              " always set autoindenting on
autocmd FileType C setlocal tabstop=8               " <tab> inserts 4 spaces 
autocmd FileType C setlocal shiftwidth=8            " but an indent level is 2 spaces wide.
autocmd FileType C setlocal softtabstop=8           " <BS> over an autoindent deletes both spaces.
autocmd FileType C setlocal noexpandtab             " Use tabs, not spaces, for autoindent/tab key.

" indents - go
autocmd FileType go setlocal nowrap                  " don't wrap text
autocmd FileType go setlocal autoindent              " always set autoindenting on
autocmd FileType go setlocal tabstop=4               " <tab> inserts 4 spaces (visual only)
autocmd FileType go setlocal shiftwidth=4            " but an indent level is 2 spaces wide.
autocmd FileType go setlocal softtabstop=4           " <BS> over an autoindent deletes both spaces.
autocmd FileType go setlocal noexpandtab             " Use tabs, not spaces, for autoindent/tab key.

