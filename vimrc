"This is an init file that incrementally loads my Vim configuration.

"As a general note, each comment line will not exceed 80 characters. This is
"done to ensure readability across most systems.

"Loads global settings (using `set` commands).
runtime settings.vim

"Loads specific settings depending on the file type.
runtime filetype.vim

"Collection of personal VimScript utilities to help quickly implement new
"features in Vim.
runtime vsutil.vim

"Implements some commands that help open many files with fuzzy file searching
"quickly.
runtime quickopen.vim

"Keybinds to commands, functions, and macros that help speed up development.
runtime keybinds.vim

