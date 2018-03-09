map <leader>codewars :cd ~/source/CodewarsCpp
map <leader>cs :cd ~/source/
map <leader>-\ :vsplit
map <leader>-- :split
map <leader>tq :VimShell
map <leader>tw :VimShellTab

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>


function! HideNumber()
  if(&relativenumber == &number)
    set relativenumber! number!
  elseif(&number)
    set number!
  else
    set relativenumber!
  endif
  set number?
endfunc
nnoremap <F2> :call HideNumber()<CR>

set showmode

map <leader>th :tabfirst<cr>
map <leader>tl :tablast<cr>

map <leader>tj :tabnext<cr>
map <leader>tk :tabprev<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprev<cr>


nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>
inoremap kj <Esc>
nnoremap <leader>q :q<CR>

autocmd BufNewFile *.sh,*.py,*.ruby exec ":call AutoSetFileHead()"
function! AutoSetFileHead()
    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
    endif

    "如果文件类型为python
    if &filetype == 'python'
        " call setline(1, "\#!/usr/bin/env python")
        " call append(1, "\# encoding: utf-8")
        call setline(1, "\# -*- coding: utf-8 -*-")
    endif

    "如果文件类型为ruby
    if &filetype == 'ruby'
        call setline(1, "\#!/usr/bin/ruby")
        " call append(1, "\# encoding: utf-8")
        "call setline(1, "\# -*- coding: utf-8 -*-")
    endif

    normal G
    normal o
    normal o
endfunc
