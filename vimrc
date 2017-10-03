" Start Vundle configuration

" Required by Vundle; gets turned back on after configuration
filetype off

" Add Vundle.vim to runtime path, to initialize Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin section - all plugins

    " Plugins

    " Alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " Let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'

    " Add all your plugins here (note older versions of Vundle used Bundle instead
    " of Plugin)

    " Help folding
    Plugin 'tmhedberg/SimpylFold'

    " Plugin for function signature indentation
    Plugin 'vim-scripts/indentpython.vim'

    " Autocomplete for Python
    Plugin 'Valloric/YouCompleteMe'

    " Plugin for syntax checking
    Plugin 'scrooloose/syntastic'

    " Add browser tree
    Plugin 'scrooloose/nerdtree'

    " Search engine
    Plugin 'kien/ctrlp.vim'

    " Instal Airline
    Plugin 'itchyny/lightline.vim'

    " Plugin for ipython integration
    Plugin 'julienr/vim-cellmode'

    " Plugin for doxygen comment generation
    Plugin 'vim-scripts/DoxygenToolkit.vim'

    " Plugin  for toggling comments
    Plugin 'scrooloose/nerdcommenter'

    " A Vim Plugin for Lively Previewing LaTeX PDF Output
    Plugin 'xuhdev/vim-latex-live-preview'

    " Plugin for bitbake
    Plugin 'kergoth/vim-bitbake'

    " Plugin for improved LaTeX
    Plugin 'lervag/vimtex'

    " Colorscheme settings
    Plugin 'joshdick/onedark.vim'

    "Colorschemes plugin
    Plugin 'flazz/vim-colorschemes'

    " Plugin for brackets pairing
    Plugin 'jiangmiao/auto-pairs'

" Map section - map shortcuts

    " Maps

    " Maps GoTo to leader + g
    map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

    " Shortcut for tree toggling (ctrl + n)
    map <C-n> :NERDTreeToggle<CR>

    map <leader><leader> <plug>NERDCommenterToggle

    " Split navigations in normal mode (disable <C-W>)
    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>
    nnoremap <C-H> <C-W><C-H>

    " Enable folding with the spacebar
    nnoremap <space> za

    " Map <ESC> key to jj, in insert mode
    imap jj <Esc>

" Let section - declaration of variables

    " Lets

    " Enables docstring preview for SimplyFold
    let g:SimpylFold_docstring_preview=1

    " Ensures that the preview window goes away
    let g:ycm_autoclose_preview_window_after_completion=1

    " Conf for YouCompleteMe - taken from Valloric, if needed change sth
    let g:ycm_global_ycm_extra_conf = "/home/lazarc/.vim/bundle/.ycm_extra_conf.py"

    " Variables for syntastic
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

    " Ignore files in NERDTree
    let NERDTreeIgnore=['\.pyc$', '\~$']

    " NERDtree
    let g:NERDCreateDefaultMappings = 0
    let g:NERDSpaceDelims = 1
    let g:NERDRemoveAltComs = 1
    let g:NERDAltDelims_c = 1

    " Some syntax highlighting options
    let python_highlight_all=1

    " Add different color past column 79 to indicate line break overstepping
    let &colorcolumn=join(range(299,999),",")

" Set section - initialization of variables

    " Sets
    " On start up all indented lines will be folded
    set foldmethod=indent

    " Setting for syntastic
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

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


    " Set postitioning of new splits
    set splitbelow
    set splitright

    " Set relative line numbering
    set rnu

    " Give priority to local, project wire .vimrc files
    set exrc

    " Enablee UTF-8 encoding
    set encoding=utf-8

    " Set line numbers
    set nu

    " Disable lag when exiting insert mode
    set timeoutlen=1000 ttimeoutlen=0

    " Display whitespace and set listchars
    set list
    "set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
    set listchars=tab:▸\ ,extends:❯,precedes:❮
    set showbreak=↪

    set termguicolors

    " Highlight cursor row
    set cursorline

    " Set default clipboard to system clipboard
    set clipboard=unnamedplus

    " Remove trailing whitespace on file save
    autocmd BufWritePre * %s/\s\+$//e

    " Enable syntax highlighting
    syntax on

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Colorscheme
    colorscheme onedark
    hi Normal guibg=NONE ctermbg=NONE
    " Set lightline colorscheme
    let g:lightline = {
        \ 'colorscheme': 'onedark',
        \}
