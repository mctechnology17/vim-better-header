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
