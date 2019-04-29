" File:        todo.txt.vim
" Description: Todo.txt filetype detection
" Author:      Leandro Freitas <freitass@gmail.com>
" License:     Vim license
" Website:     http://github.com/freitass/todo.txt-vim
" Version:     0.1

autocmd BufNewFile,BufRead todo.txt,TODO.txt,*.md set filetype=markdown.todo
autocmd BufNewFile,BufRead done.txt,DONE.txt set filetype=markdown.todo
