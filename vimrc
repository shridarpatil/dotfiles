set encoding=UTF-8
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


autocmd FileType python nnoremap <LocalLeader>i :!isort %<CR><CR>

Plugin 'davidhalter/jedi-vim'

" Auto complete me
Plugin 'Valloric/YouCompleteMe'

" Sort Import
Plugin 'fisadev/vim-isort'

"google python code formator
Plugin 'google/yapf'

"Syntax checking
Plugin 'w0rp/ale'
Plugin 'tell-k/vim-autopep8'
" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'jeetsukumaran/vim-buffergator'

" Now we can turn our filetype functionality back on filetype plugin indent on
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nvie/vim-flake8'
Plugin 'ryanoasis/nerd-fonts'
" fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'honza/vim-snippets'
" snipet
Plugin 'SirVer/ultisnips'
"Auto close
Plugin 'Raimondi/delimitMate'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'dracula/vim'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'cj/vim-webdevicons'
Plugin 'ryanoasis/vim-devicons'
syntax on
colorscheme monokai
" color distinguished

set number
set incsearch
set hlsearch

set laststatus=2
let g:airline_theme='dark'

"set tab character
set list
set listchars=tab:_\ ,trail:⋅

"Remove trailing space or tab from python file
autocmd BufWritePre *.* :%s/\s\+$//e

set tabstop=4       " The width of a TAB is set to 4.
set shiftwidth=4
set softtabstop=4
set expandtab

let g:autopep8_max_line_length=90

"Nertree filter files based on extension
let NERDTreeIgnore = ['\.pyc$']
" Auto reload
" highlight cursor line
set cursorline
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

nmap <C-R> :NERDTreeFocus<cr>R<c-w><c-p>
nmap <C-T> :NERDTreeToggle<CR>
" ctrl+s to save
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>
"ctrl+f to find
nmap <c-f> <Esc> /

set encoding=UTF-8

"asd
set autoread
set smartindent

nnoremap mm :m -2<CR><Esc>
nmap <c-n> :m +1<CR><Esc>
"tab navigations
nnoremap tf  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

set colorcolumn=90

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
"let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'
let g:DevIconsEnableFolderPatternMatching = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_enable_flagship_statusline = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

