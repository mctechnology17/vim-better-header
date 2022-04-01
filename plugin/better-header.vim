"=========================================
" FileName: better-header.vim
" Date: 15:58 29.March.2022
" Author: Marcos Chow Castro
" Email: mctechnology170318@gmail.com
" GitHub: https://github.com/mctechnology17
" Brief: better-header main code
"==========================================

scriptencoding utf-8

let s:plugin_path = expand('<sfile>:p:h:h')

if exists('g:better_head_enable') " {{{
  finish
endif

let g:better_head_enable =
			\ get(g:, 'better_head_enable', 1)
" }}}

function! s:insert_template()
  " define filetype {{{
  if (&filetype ==# 'cpp')||(&filetype ==# 'c')||(&filetype ==# 'rust')
        \ ||(&filetype ==# 'go')||(&filetype ==# 'java')||(&filetype ==# 'php')
        \ ||(&filetype ==# 'javascript')||(&filetype ==# 'scala')
        \ ||(&filetype ==# 'json')||(&filetype ==# 'jsonc')
    let template = s:plugin_path.'/template/cpp.txt'
  elseif (&filetype ==# 'markdown')||(&filetype ==# 'vimwiki')
    let template = s:plugin_path.'/template/markdown.txt'
  elseif (&filetype ==# 'mail')
    let template = s:plugin_path.'/template/mail.txt'
  elseif (&filetype ==# 'autohotkey')
    let template = s:plugin_path.'/template/autohotkey.txt'
  elseif (&filetype ==# 'dosbatch')
    let template = s:plugin_path.'/template/dosbatch.txt'
  elseif (&filetype ==# 'html')
    let template = s:plugin_path.'/template/html.txt'
  elseif (&filetype ==# 'xml')
    let template = s:plugin_path.'/template/xml.txt'
  elseif (&filetype ==# 'vim')
    let template = s:plugin_path.'/template/vim.txt'
  elseif (&filetype ==# 'tex')||(&filetype ==# 'plaintex')
    let template = s:plugin_path.'/template/latex.txt'
  elseif (&filetype ==# 'lua')
    let template = s:plugin_path.'/template/lua.txt'
  else
    let template = s:plugin_path.'/template/hashtag.txt'
  endif
  "}}}
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
if !(&filetype ==# 'nerdtree')||!(&filetype ==# 'netrw')
  autocmd BufNewFile * call <SID>insert_template()
endif
" }}}

" vim: set sw=2 ts=2 sts=2 et ft=vim fdm=marker:
