"Keybinds to commands, functions, and macros that help speed up development.

"Map the leader key
let mapleader=','

"Common movement keys move one line even when wrapping is on.
nnoremap j gj
nnoremap k gk
nnoremap <down> g<down>
nnoremap <up> g<up>

"Faster tab movement and organization
nnoremap J :tabprev<return>
nnoremap K :tabnext<return>
nnoremap <C-j> :-tabmove<return>
nnoremap <C-k> :+tabmove<return>

"Removes the search highlighting.
nnoremap <C-c> :noh<return>

"Closes the window.
nnoremap <leader>q :q!<return>

"Custom Function Keybinds
nnoremap <leader>t  :QuickTabs 
nnoremap <leader>e  :FuzzyEdit 
nnoremap <leader>T  :$tabnew 
nnoremap <leader>E  :e 
nnoremap <leader>c  :cd 

