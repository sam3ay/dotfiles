" keybindings 
" For local replace
"nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

" For global replace
"nnoremap gR gD:%s/<C-R>///gc<left><left><left>

nnoremap <silent> gr :<C-u>call VSCodeNotify('editor.action.rename')<CR>