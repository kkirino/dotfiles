" global
syntax on
set number
set expandtab
set mouse=a

" colorscheme
colorscheme hybrid
set background=dark
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none 

" terminal
set splitbelow
set termwinsize=15x0

" set tab and indentation in R
let r_indent_align_args = 0

" indentation
if has("autocmd")
        filetype plugin on
        filetype indent on
        autocmd FileType json       setlocal sw=2 sts=2 ts=2
        autocmd FileType html       setlocal sw=2 sts=2 ts=2
        autocmd FileType javascript setlocal sw=2 sts=2 ts=2
        autocmd FileType sh         setlocal sw=4 sts=4 ts=4
        autocmd FileType r          setlocal sw=2 sts=2 ts=2
        autocmd FileType rmd        setlocal sw=2 sts=2 ts=2
endif

" find files
set path+=$PWD/**

" plugin management with vim-plug
call plug#begin('~/.vim/plugged')
Plug 'Raimondi/delimitMate'
Plug 'itchyny/lightline.vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" coc.nvim
let g:coc_global_extensions = [
\       "coc-html",
\       "coc-tsserver",
\       "coc-prettier",
\       "coc-pyright",
\       "coc-json",
\       "coc-yaml",
\       "coc-docker",
\       "coc-sh",
\       "coc-r-lsp",       
\       "coc-explorer"
\ ]

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" coc-explorer
nmap <space>e <Cmd>CocCommand explorer<CR>

" LightLine.vim 
set laststatus=2

" WSL clipboard
if !empty($WSL_DISTRO_NAME)
        let s:clip = '/mnt/c/Windows/System32/clip.exe'
        if executable(s:clip)
                augroup WSLYank
                autocmd!
                autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
                augroup END
        endif
endif
