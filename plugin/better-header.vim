"=========================================
" FileName: better-header.vim
" Date: 15:58 29.March.2022
" Author: Marcos Chow Castro
" Email: mctechnology170318@gmail.com
" GitHub: https://github.com/mctechnology17
" Brief: <brief>
" Detail: <detail>
"==========================================

scriptencoding utf-8

if !exists('g:better_head_enable')
  finish
endif

let g:better_head_enable =
			\ get(g:, 'better_head_enable', 1)

" define os and editor {{{
let s:is_win =
      \ get(s:, 'is_win',
      \ expand( has('win32unix')||has('win32')
      \ ||has('win64')||has("win16")||has("win95")
      \ ))
let s:is_unix = get(s:, 'is_unix', has('unix'))
let s:is_vim = get(s:, 'is_vim', !has('nvim'))
let s:is_nvim = get(s:, 'is_vim', has('nvim'))
" }}}

""" template_route {{{
if (s:is_win)
  if (s:is_nvim)
    let template_route=
          \ expand(
          \ '~/AppData/Local/nvim-data/site/autoload/vim-better-header/template'
          \ )
  else
    let template_route=
          \ expand('~/vimfiles/autoload/vim-better-header/template')
  endif
else
  if (s:is_nvim)
    let template_route=
          \ expand('~/.config/nvim/plugged/vim-better-header/template')
  else
    let template_route=expand('~/.vim/plugged/vim-better-header/template')
  endif
endif " }}}

" define home{{{
function! s:DefineHome()
  if (s:is_win)
    if (s:is_nvim)
      return resolve(expand(
            \ $HOME.'/AppData/Local/nvim-data/site/autoload/vim-better-header/template'
            \ ))
    else
      return resolve(expand(
            \ $HOME.'/vimfiles/autoload/vim-better-header/template'))
    endif
  else
    if (s:is_nvim)
      return resolve(expand(
            \ $HOME.'.config/nvim/plugged/vim-better-header/template'
            \ ))
    else
      return resolve(expand(
            \ $HOME.'.vim/plugged/vim-better-header/template'))
    endif
  endif
endfunction
"}}}

if isdirectory(template_route)
  function! s:insert_template()
    " define filetype {{{
    let home = s:DefineHome()
    if (&filetype ==# 'cpp')||(&filetype ==# 'c')||(&filetype ==# 'rust')
          \ ||(&filetype ==# 'go')||(&filetype ==# 'java')||(&filetype ==# 'php')
          \ ||(&filetype ==# 'javascript')||(&filetype ==# 'scala')
          \ ||(&filetype ==# 'json')||(&filetype ==# 'jsonc')
      let template = resolve(home."/cpp.txt")
    elseif (&filetype ==# 'markdown')||(&filetype ==# 'vimwiki')
      let template = resolve(home."/markdown.txt")
    elseif (&filetype ==# 'mail')
      let template = resolve(home."/mail.txt")
    elseif (&filetype ==# 'autohotkey')
      let template = resolve(home."/autohotkey.txt")
    elseif (&filetype ==# 'dosbatch')
      let template = resolve(home."/dosbatch.txt")
    elseif (&filetype ==# 'html')
      let template = resolve(home."/html.txt")
    elseif (&filetype ==# 'xml')
      let template = resolve(home."/xml.txt")
    elseif (&filetype ==# 'vim')||(&filetype ==# 'nvim')
      let template = resolve(home."/vim.txt")
    elseif (&filetype ==# 'tex')||(&filetype ==# 'plaintex')
      let template = resolve(home."/latex.txt")
    elseif (&filetype ==# 'lua')
      let template = resolve(home."/lua.txt")
    else
      let template = resolve(home."/hashtag.txt")
    endif
    " }}}
    " global variable {{{
    let file_name = expand("%:t")
    if !exists('g:better_head_date')
      let g:better_head_date =
            \ get(g:, 'better_head_date', strftime("%H:%M %d.%B.%Y"))
    endif
    if !exists('g:better_head_author')
      let g:better_head_author =
            \ get(g:, 'better_head_author', '<name>')
    endif
    if !exists('g:better_head_email')
      let g:better_head_email =
            \ get(g:, 'better_head_email', '<email>')
    endif
    if !exists('g:better_head_github')
      let g:better_head_github =
            \ get(g:, 'better_head_github', '<github>')
    endif
    " }}}
    " insert substitute parameters {{{
    let i = 0
    for line in readfile(template)
      let line = substitute(line, "<file_name>", file_name, "ge")
      let line = substitute(line, "<name>", g:better_head_author, "ge")
      let line = substitute(line, "<email>", g:better_head_email, "ge")
      let line = substitute(line, "<date>", g:better_head_date, "ge")
      let line = substitute(line, "<github>", g:better_head_github, "ge")
      call append(i, line)
      let i += 1
    endfor
    " }}}
    " insert new line {{{
    execute "normal! Go\<Esc>k"
    " }}}
  endfunction
  " define autocmd {{{
  autocmd BufNewFile * call <SID>insert_template()
  " }}}
else
  " if template not found {{{
  echohl MoreMsg
  echon 'the template path does not exist'
  echohl None
  " }}}
endif

" vim: set sw=2 ts=2 sts=2 et ft=vim fdm=marker:
