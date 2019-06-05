syntax on
color dracula
set number
set tabstop=4
set shiftwidth=4
set expandtab

call plug#begin('~/.config/nvim/plugins')

" Markdown preview
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" Plug 'turbio/bracey.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'deoplete-plugins/deoplete-jedi'
Plug 'neomake/neomake'

call plug#end()

" call deoplete#custom#var('clangx', 'clang_binary', '/usr/lib64/llvm/8/bin/clang')

" let g:clang_library_path='/usr/lib64/llvm/8/lib64'
" let g:mkdp_command_for_global = 1
" let g:mkdp_browser = ''
let g:deoplete#enable_at_startup = 1
call neomake#configure#automake('nrwi', 500)
