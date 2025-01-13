"Loads global settings (using `set` commands) with some minor logic allowed.

"Use the default color scheme and syntax highlighting. Anything other than this
"might cause viewing issues on other systems, terminal emulators, multiplexers,
"etc. Wrapping is also disabled to ensure text appears as it should.
syntax on
colorscheme codedark
set nowrap

"Shows current line number and relative line offsets for better usage of vim
"motions.
set number
set relativenumber

"Ensures that when you press <TAB>, the <TAB> character is actually inserted.
"It is crazy that this is so complicated for some people and editors.
set noexpandtab
set shiftwidth:3
set tabstop:3
set autoindent
set nocindent

"Makes the Vim command menu appear vertically, and adds fuzzy search to the
"menu.
set wildmenu
set wildoptions:pum,fuzzy

"Enable the mouse in all modes. Useful for demonstration purposes but rarely
"used for actual development.
set mouse=a

