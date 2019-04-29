" File:        todo.txt.vim
" Description: Todo.txt filetype detection
" Author:      Leandro Freitas <freitass@gmail.com>
" License:     Vim license
" Website:     http://github.com/freitass/todo.txt-vim
" Version:     0.4

let s:save_cpo = &cpo
set cpo&vim

" Some options lose their values when window changes. They will be set every
" time this script is invocated, which is whenever a file of this type is
" created or edited.
setlocal textwidth=0
setlocal wrapmargin=0

nnoremap <script> <silent> <buffer> <localleader>ss vip:%sort<CR>
nnoremap <script> <silent> <buffer> <localleader>s@ vip:%call todo#txt#sort_by_context()<CR>
nnoremap <script> <silent> <buffer> <localleader>s+ vip:%call todo#txt#sort_by_project()<CR>
nnoremap <script> <silent> <buffer> <localleader>sd vip:%call todo#txt#sort_by_date()<CR>
nnoremap <script> <silent> <buffer> <localleader>sdd vip:%call todo#txt#sort_by_due_date()<CR>

nnoremap <script> <silent> <buffer> <localleader>pa :call todo#txt#prioritize_add('A')<CR>
nnoremap <script> <silent> <buffer> <localleader>pb :call todo#txt#prioritize_add('B')<CR>
nnoremap <script> <silent> <buffer> <localleader>pc :call todo#txt#prioritize_add('C')<CR>
nnoremap <script> <silent> <buffer> <localleader>pd 0f(da(

nnoremap <script> <silent> <buffer> <localleader>d :call todo#txt#replace_date()<CR>

nnoremap <script> <silent> <buffer> <localleader>x :call todo#txt#mark_as_done()<CR>

nnoremap <script> <silent> <buffer> <localleader>X :call todo#txt#mark_all_as_done()<CR>

nnoremap <script> <silent> <buffer> <localleader>D :call todo#txt#remove_completed()<CR>

let &cpo = s:save_cpo
" vim: ts=8 sw=4 sts=4 et foldenable foldmethod=marker foldcolumn=1
