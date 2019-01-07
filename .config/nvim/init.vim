" Enable Filetype detection
filetype on

" let g:mapleader set leader key represented by <LEADER> 

" Plugin Manager
call plug#begin('~/.local/share/nvim/plugged')

" Linter python and others
Plug 'w0rp/ale'

" Install git diff plugin
Plug 'airblade/vim-gitgutter'

" Install git wrapper plugin
Plug 'tpope/vim-fugitive'

" Install git commit browser
Plug 'junegunn/gv.vim'

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

" Quick Comments
Plug 'scrooloose/nerdcommenter'

" Insert brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" Use RipGrep in vim
Plug 'jremmen/vim-ripgrep'

" Simplified quoting and parentheses
Plug 'tpope/vim-surround'

" Simple, easy-to-use alignment.
Plug 'junegunn/vim-easy-align' 

 " Fzf search. 
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Fzf search.
Plug 'junegunn/fzf.vim' 

" Vim source for deoplete
Plug 'Shougo/neco-vim', { 'for': 'vim' }

" Initialize plugin system
call plug#end()

" Set Colorscheme
silent! colorscheme apprentice

" set linter filetype
let g:ale_linters = {'python': ['flake8']}

" Use deoplete.
let g:deoplete#enable_at_startup = 1
" show docstrings in preview window
let g:deoplete#sources#jedi#show_docstring = 1

" set statusbar defaults
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" enable fly mode autopairs
let g:AutoPairsFlyMode = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 0

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
" let g:NERDDefaultAlign = 'left'

" Enter: complete&close popup if visible (so next Enter works); else: break undo
inoremap <silent><expr> <Cr> pumvisible() ?
            \ deoplete#mappings#close_popup() : "<C-g>u<Cr>"

" Ctrl-Space: summon FULL (synced) autocompletion
inoremap <silent><expr> <C-Space> deoplete#mappings#manual_complete()

" Escape: exit autocompletion, go to Normal mode
inoremap <silent><expr> <Esc> pumvisible() ? "<C-e><Esc>" : "<Esc>"

syntax on
" Tabs
set tabstop=8 
set softtabstop=4 
set shiftwidth=4 
set expandtab
set wildmenu
" Now set it if we open a go file autocmd FileType go nnoremap<buffer>
" <Leader>T :call GoFunction()
" autocmd FileType tex  let b:deoplete_disable_auto_complete = 1
augroup omnifuncs
  autocmd!
  autocmd FileType python setlocal omnifunc=jedi#completions
"  autocmd FileType julia setlocal omnifunc=
augroup end

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
