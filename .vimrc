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
Plug 'vim-skk/eskk.vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" eskk.vim
let g:eskk#directory = "~/.eskk"
let g:eskk#dictionary = {'path': "~/.eskk/my_jisyo", 'sorted': 1, 'encoding': 'utf-8'}
let g:eskk#large_dictionary = {'path': "~/.eskk/SKK-JISYO.L", 'sorted': 1, 'encoding': 'euc-jp'}

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

