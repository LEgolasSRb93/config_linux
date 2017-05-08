" Start Vundle configuration

" Required by Vundle; gets turned back on after configuration
filetype off

" Add Vundle.vim to runtime path, to initialize Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead
" of Plugin)

" Help folding
Plugin 'tmhedberg/SimpylFold'

" Enables docstring preview for SimplyFold
let g:SimpylFold_docstring_preview=1

" Plugin for function signature indentation
Plugin 'vim-scripts/indentpython.vim'

" Autocomplete for Python
Plugin 'Valloric/YouCompleteMe'

" Ensures that the preview window goes away
let g:ycm_autoclose_preview_window_after_completion=1

" Maps GoTo to leader + g
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Plugin for syntax checking
Plugin 'scrooloose/syntastic'

" Setting for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Add browser tree
Plugin 'scrooloose/nerdtree'

" Ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']

" Shortcut for tree toggling (ctrl + n)
map <C-n> :NERDTreeToggle<CR>

" Search engine
Plugin 'kien/ctrlp.vim'

" Instal Airline
Plugin 'itchyny/lightline.vim'

" Plugin for ipython integration
Plugin 'julienr/vim-cellmode'

" Will try to automatically pickup tmux session
let g:cellmode_tmux_sessionname=''
let g:cellmode_tmux_windowname=''
let g:cellmode_tmux_panenumber='1'

" Plugin for doxygen comment generation
Plugin 'vim-scripts/DoxygenToolkit.vim'

" Plugin  for toggling comments
Plugin 'scrooloose/nerdcommenter'

map <leader><leader> <plug>NERDCommenterToggle
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
let g:NERDRemoveAltComs = 1
let g:NERDAltDelims_c = 1

" Plugin for improved LaTeX
Plugin 'lervag/vimtex'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Theme settings


" Set something for airline
set laststatus=2

" Configure tab preferences

" Tab character is 4 spaces wide
set tabstop=4

" Tab key indents four spaces
set softtabstop=4

" Using << and >> shifts four spaces
set shiftwidth=4

" Text gets wrapped at column 79
set textwidth=79

" Tab press will produce spaces instead of tab character
set expandtab

" Automatically indent when pressing <CR>
set autoindent

" Disable italics

" Used for line termination (not same in DOS and Unix, '\r\n' and '\n')
set fileformat=unix

" Turn off permanent backups
set nobackup

" Turn off backups while writing to file
set nowritebackup

" Turn off undo files
set noundofile

" Set default syntax highlighting for assembly
au BufRead,BufNewFile *.asm set filetype=nasm

" Split navigations in normal mode (disable <C-W>)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set postitioning of new splits
set splitbelow
set splitright

" Set relative line numbering
set rnu

" Give priority to local, project wire .vimrc files
set exrc

" Enable folding with the spacebar
nnoremap <space> za

" Enablee UTF-8 encoding
set encoding=utf-8

" Some syntax highlighting options
let python_highlight_all=1

" Set line numbers
set nu

" Disable lag when exiting insert mode
set timeoutlen=1000 ttimeoutlen=0

" Map <ESC> key to jj, in insert mode
imap jj <Esc>

" Display whitespace and set listchars
set list
"set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set listchars=tab:▸\ ,extends:❯,precedes:❮
set showbreak=↪

" Add different color past column 79 to indicate line break overstepping
let &colorcolumn=join(range(80,999),",")

" Highlight cursor row
set cursorline

" Remove trailing whitespace on file save
autocmd BufWritePre * %s/\s\+$//e

" Enable syntax highlighting
syntax on
"set linebreak
"set showbreak=+++
"set textwidth=100
"set showmatch
"set visualbell

"set hlsearch
"set smartcase
"set ignorecase
"set incsearch

"set autoindent
"set shiftwidth=4
"set smartindent
"set smarttab
"set softtabstop=4

"set ruler

"set undolevels=1000
"set backspace=indent,eol,start
"
" Test flag for enabling Syntastic for C++ files
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"
"
" Colorscheme settings
Plugin 'joshdick/onedark.vim'

" Some color configuration
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme onedark
hi Normal guibg=NONE ctermbg=NONE
" Set lightline colorscheme
let g:lightline = {
    \ 'colorscheme': 'onedark',
    \}
