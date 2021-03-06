set nocompatible
set encoding=utf-8
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline-themes'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'crusoexia/vim-monokai'
Plug 'crusoexia/vim-javascript-lib' | Plug 'pangloss/vim-javascript'
Plug 'vim-syntastic/syntastic'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

call plug#end()

" Options
syntax on
colorscheme monokai
syntax on
set rnu
set softtabstop=2
set tabstop=2
set shiftwidth=2
set mouse=a
set wildmenu
set wildmode=list:longest,full
set showcmd
set expandtab
set foldmethod=indent

" Other Options
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme="hybridline"

" powerline symbols
let g:airline_powerline_fonts = 1

" Syntastic-Related Options
let g:airline#extensions#syntastic#enabled = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]

let g:airline#extensions#syntastic#warning_symbol = '⚠'
let airline#extensions#syntastic#stl_format_warn = '%W{[%fw(#%w)]}'

let g:airline#extensions#syntastic#error_symbol = '❌'
let airline#extensions#syntastic#stl_format_err = '%E{[%fe(#%e)]}'

" IndentLine options
let g:indentLine_char = '⎸'
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_color_term = 240
au BufRead,BufEnter,BufNewFile * IndentLinesReset

" UltiSnips Configuration

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" NERDTree Options

" Shows hidden files as well
let NERDTreeShowHidden=1

" Fixes some issues
autocmd FileType nerdtree set noreadonly

" Start NERDTree Automatically on opening vim
autocmd vimenter * NERDTree

" If previous buffer was NERDTree, go back to it. (Stops other buffers and
" files from overiding NERDTree's window)
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" | b# | endif

" Keyboard Shortcuts

" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" Set tab to emment completion
imap <Leader><Tab> <C-y>,

" Maps f4 to duplicate line
map <f4> yyp
