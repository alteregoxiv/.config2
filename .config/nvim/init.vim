
syn on
set nu
set laststatus=2
set bs=2 
set tabstop=8 softtabstop=0 expandtab smarttab
set encoding=utf-8
set noswapfile
set clipboard=unnamedplus

highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

set mouse=a 
set noerrorbells
set noswapfile
set tabstop=2 shiftwidth=2
set listchars=tab:\|\ 
set list
set number relativenumber
set nohlsearch incsearch
set autoread
set undofile
set hidden
set updatetime=50
set nobackup
set shortmess+=c
set nowrap
set smartcase
set smartindent
set noshowmode
set undodir=~/.config/nvim/undodir
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right

filetype plugin on

" Uncomment the below two lines after installing Plugins for first time and
" performing make theme or else vim will not be able to load neon theme.
"
"let g:gruvbox_contrast_dark = 'hard' 
" colorscheme gruvbox
" set background=dark
"  set termguicolors

au BufNewFile,BufRead *.java,*.c,*.html,*.css,*.js,*.jsx
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |

" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#poetv#enabled = 1

if !exists('g:airline_symbols')
        let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
"let g:airline_left_sep = ''
let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:lightline = {
  \ 'colorscheme': 'gruvbox',
  \ }

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
"Plug 'itchyny/lightline.vim'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdcommenter'
Plug 'Manu-sh/NeonVimColorscheme'
Plug 'ryanoasis/vim-devicons'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'tomasiser/vim-code-dark'
Plug 'Yggdroot/indentLine'
Plug 'ap/vim-css-color'
Plug 'KabbAmine/vCoolor.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'jmcantrell/vim-virtualenv'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
Plug 'vimlab/split-term.vim'
Plug 'mhinz/vim-startify'
Plug 'mattn/emmet-vim'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
call plug#end()

"HOME TAKES THE POINTER TO THE FIRST NON-SPACE COLUMN OF THE LINE
:map <Home> ^
:imap <Home> <Esc>^i

"Ctrl+\ && Ctrl+n => Ctrl+i

"SWITCHING BETWEEN TABS
nnoremap <C-Left> :bp<CR>
nnoremap <C-Right> :bn<CR>
nnoremap <C-Home> :bfirst<CR>
nnoremap <C-End> :blast<CR>

"CLOSING TAB
"nmap <C-x> :bd<CR>
nnoremap <C-x> :bp<cr>:bd #<cr>

"FUZZY FINDER
nmap <S-f> :FZF<cr>

"VERTICAL TERMINAL
nmap <C-t> :VTerm<cr>
"HORIZONTAL TERMINAL
nmap <S-t> :Term<cr>

"Prettier
nmap <C-p> :Prettier<cr>

"COLOR PICKER(VCOOLOR)
nmap <S-p> :VCoolor<cr>


"MOVING LINES
"DOWN
nmap <C-j> ddp
"UP
nmap <C-k> ddkkp
nmap <C-l> dlp
nmap <C-h> dlhhp

"MOVING MULTIPLE LINES
"DOWN
vnoremap J :m '>+1<CR>gv=gv
"UP
vnoremap K :m '<-2<CR>gv=gv


"HORIZONTAL RESIZING
nmap <S-Up> :res +1<cr>
nmap <S-Down> :res -1<cr>
"VERTICAL RESIZING
nmap <S-Right> :vert res +1<cr>
nmap <S-Left> :vert res -1<cr>


"NAVIGATING BETWEEN SPLITS
nmap <A-Up> :wincmd k<cr>
nmap <A-Down> :wincmd j<cr>
nmap <A-Left> :wincmd h<cr>
nmap <A-Right> :wincmd l<cr>


"SAVE , SAVE & EXIT , QUIT DISCARDING CHANGES
inoremap <C-s> <esc>:w<cr>                 " save files
nnoremap <C-s> :w<cr>
inoremap <C-d> <esc>:wq!<cr>               " save and exit
nnoremap <C-d> :wq!<cr>
inoremap <C-q> <esc>:q!<cr>               " quit discarding changes
nnoremap <C-q> :q!<cr>


set background=dark
set background=dark

"NERD TREE
nnoremap <C-a> :NERDTreeToggle %<CR>
nnoremap <S-a> :NERDTreeToggle<CR>
let g:NERDTreeGitStatusWithFlags = 1

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif



let g:gruvbox_contrast_dark = 'hard' 
 colorscheme gruvbox
 set background=dark
  set termguicolors

let g:gruvbox_material_transparent_background = 1

let g:prettier#exec_cmd_path = "~/path/to/cli/prettier"
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'

highlight CocUnusedHighlight ctermbg=NONE guibg=NONE guifg=#FF9E55
