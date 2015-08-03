" ==========================================================
" Vundle
" ==========================================================
set encoding=utf8

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/Vundle.vim'

"My Bundles here:
Bundle 'Lokaltog/vim-easymotion'
Bundle 'bling/vim-airline'

" Write faster HTML
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'topfunky/PeepOpen-EditorSupport', {'rtp': 'vim-peepopen/'}

" Coffeescript support
Bundle 'kchmck/vim-coffee-script'
autocmd BufWritePost *.coffee silent execute 'make!'

" Add distraction free mode
Plugin 'junegunn/goyo.vim'
let g:goyo_width = 130
Plugin 'junegunn/limelight.vim'

" GitGutter to show changed lines
Plugin 'airblade/vim-gitgutter'
" Enable Git Support
Plugin 'tpope/vim-fugitive'

" Autocompletion from keywords of the current buffer
Plugin 'davidhalter/jedi-vim'
autocmd FileType python setlocal completeopt-=preview   " Disable auto docs

" Bundle 'Valloric/YouCompleteMe'

" Support for liquid Templates
Plugin 'tpope/vim-liquid'

" Enable Pep8
" Plugin 'nvie/vim-flake8'
" autocmd BufWritePost *.py call Flake8()
" let g:syntastic_python_flake8_args='--ignore=E501' " ignore line length because this is stupid

" All about comments
Plugin 'scrooloose/nerdcommenter'

" Removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

autocmd FileType python,java autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileType python,java autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FileType python,java autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd FileType python,java autocmd BufWritePre     * :call TrimWhiteSpace()

" LaTeX settings
Plugin 'lervag/vimtex'
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
autocmd BufNewFile,BufRead *.tex set spell
autocmd BufNewFile,BufRead *.tex set wrap

" Multiple Cursors
Bundle 'terryma/vim-multiple-cursors'

" Multiple code styleguides
" Bundle 'scrooloose/syntastic'

"Rainbow brackets
Plugin 'kien/rainbow_parentheses.vim.git'
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Rebind <Leader> key
" I like to have it here because it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

" easier moving between tabs
map <Leader><Left> <esc>:tabprevious<CR>
map <Leader><Right> <esc>:tabnext<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

"" OS X Support for Powerline Fonts
" You need to download this font first and import
" it to your font book:
" https://github.com/Lokaltog/powerline-fonts/tree/master/Inconsolata
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'

" ==========================================================
" Shortcuts
" ==========================================================
" Seriously, guys. It's not like :W is bound to anything anyway.
command! Q :q
command! W :w

" Allow pasting blocks of code without indenting
set pastetoggle=<F2>

" Fix Shift+Tab
nmap <S-Tab> <<
imap <S-Tab> <Esc><<i

nmap <Leader>t :TagbarToggle<CR>
nmap <Leader>g :NERDTreeToggle<CR>

" Move lines up or down
nnoremap ∆ :m-2<CR>==
nnoremap º :m+<CR>==

" Let me save files with sudo
cmap w!! w !sudo tee % >/dev/null

let NERDTreeIgnore = ['\.pyc$']

set tw=0
set wm=0
set nowrap
set linebreak

" Useful settings
set history=700
set undolevels=700

" Disable autofolding in Markdown
let g:vim_markdown_folding_disabled=1

" ==========================================================
" Basic Settings
" ==========================================================
syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype
set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
set background=dark           " We are using dark background in vim
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.
set showcmd

set colorcolumn=121
set tw=120

" don't bell or blink
"set noerrorbells
"set vb t_vb=


" don't outdent hashes
inoremap # #

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent
set mouse=a


set ls=2  "Always show status line"

" show linenumber in the bottom right corner
set ruler

" hide files instead of closing them on changing the buffer
set hidden

set nolazyredraw
set showmatch

set backspace=indent,eol,start

set nobackup
set noswapfile

language en_US

set undodir=~/.vim_runtime/undodir
set undofile

" displays tabs with :set list & displays when a line runs off-screen
"set listchars=tab:>.,trail:.,precedes:<,extends:>
"set list

""" Searching and Patterns
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set smarttab                " Handle tabs more intelligently
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex

"""" Display
if has("gui_running")
    colorscheme lucius
    " Remove menu bar
    set guioptions-=m

    " Remove toolbar
    set guioptions-=T
else
    colorscheme desert
endif
" Remove Scrollbar
set guioptions-=r

" ===========================================================
" FileType specific changes
" ============================================================
" Javascript
au BufRead *.js set makeprg=jslint\ %
" Use tab to scroll through autocomplete menus
"autocmd VimEnter * imap <expr> <Tab> pumvisible() ? "<C-N>" : "<Tab>"
"autocmd VimEnter * imap <expr> <S-Tab> pumvisible() ? "<C-P>" : "<S-Tab>"
autocmd filetype javascript set sw=2 ts=2 expandtab
let g:acp_completeoptPreview=1

" Mako/HTML
autocmd BufNewFile,BufRead *.mako,*.mak,*.jinja2 setlocal ft=html
autocmd FileType html,xhtml,xml,css setlocal expandtab shiftwidth=2 tabstop=2

" Python
"au BufRead *.py compiler nose

"au FileType python set omnifunc=pythoncomplete#Complete
au FileType python setlocal expandtab shiftwidth=4 tabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
au BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
au FileType python set foldmethod=indent foldlevel=99

"rope options
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

" Don't let pyflakes use the quickfix window
let g:pyflakes_use_quickfix = 0

" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

" Add the virtualenv's site-packages to vim path
if has('python')
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
endif

" Load up virtualenv's vimrc if it exists
if filereadable($VIRTUAL_ENV . '/.vimrc')
    source $VIRTUAL_ENV/.vimrc
endif

" Some other modifications
set cursorline
