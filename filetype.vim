"Loads specific settings depending on the file type.

augroup PROGRAMMING-TEX
	"Turn on spellcheck, and set the dictionary language to English.
	autocmd FileType tex set spell spelllang=en_us
augroup END

augroup PROGRAMMING-PYTHON
	"Run the currently open python script when <leader>r is pressed.
	autocmd Filetype python nnoremap <leader>r :!python3 %<return>
augroup END

augroup PROGRAMMING-COMMON-LISP
	"Shorten the tab length to two spaces and turn off Vim's lisp
	"auto-formatter so that custom formatting can be used. It is very helpful
	"in Lisp.
	autocmd Filetype lisp set nolisp shiftwidth:2 tabstop:2
	"Run the currently open file using the Steel-Bank Common Lisp compiler.
	autocmd Filetype lisp nnoremap <Leader>r :!sbcl --script %<return>
augroup END

augroup PROGRAMMING-BASH
	"Run the currently open bash script in the current bash environment.
	autocmd Filetype sh nnoremap <leader>r :!source %<return>
	"Run the currently open bash script in a isolated environment.
	autocmd Filetype sh nnoremap <leader>R :!bash %<return>
augroup END

