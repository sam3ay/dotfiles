
" Plugin Manager
call plug#begin('~/.local/share/nvim/plugged')

" Linter python and others
Plug 'w0rp/ale'

" autocomplete python
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" install colorscheme apprentic
Plug 'romainl/Apprentice'

" vim status bar
Plug 'vim-airline/vim-airline'

" vim status bar themes
Plug 'vim-airline/vim-airline-themes'

" python autocomplete
Plug 'zchee/deoplete-jedi'

" install julia and vim
Plug 'JuliaEditorSupport/julia-vim'

" install julia autocomplete
Plug 'JuliaEditorSupport/deoplete-julia'

" Initialize plugin system
call plug#end()

" Set Colorscheme
silent! colorscheme apprentice

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" set statusbar defaults
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" use <tab> for completion
function! TabWrap()
    if pumvisible()
        return "\<C-N>"
    elseif strpart( getline('.'), 0, col('.') - 1 ) =~ '^\s*$'
        return "\<tab>"
    elseif &omnifunc !~ ''
        return "\<C-X>\<C-O>"
    else
        return "\<C-N>"
    endif
endfunction

" power tab
imap <silent><expr><tab> TabWrap()

" Enter: complete&close popup if visible (so next Enter works); else: break undo
inoremap <silent><expr> <Cr> pumvisible() ?
            \ deoplete#mappings#close_popup() : "<C-g>u<Cr>"

" Ctrl-Space: summon FULL (synced) autocompletion
inoremap <silent><expr> <C-Space> deoplete#mappings#manual_complete()

" Escape: exit autocompletion, go to Normal mode
inoremap <silent><expr> <Esc> pumvisible() ? "<C-e><Esc>" : "<Esc>"
