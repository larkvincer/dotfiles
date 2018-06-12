" True color

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')
" Themes
Plug 'chriskempson/base16-vim'

" Make sure you use single quotes
Plug 'scrooloose/nerdtree'

" Editor config plugin
Plug 'editorconfig/editorconfig-vim'

" Fuzzy finder -- absolutely must have.
Plug 'kien/ctrlp.vim'

" Support for easily toggling comments.
Plug 'tpope/vim-commentary'

" Surround with stuff
Plug 'tpope/vim-surround'

" Lint engine
Plug 'w0rp/ale'

" Complete engine
Plug 'valloric/youcompleteme'

" Snippets engine
Plug 'sirver/ultisnips'

" Brackets autocomplete
Plug 'git://github.com/jiangmiao/auto-pairs.git'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" git integration
Plug 'tpope/vim-fugitive'

" Git difference
Plug 'airblade/vim-gitgutter'

" Javascript syntax
Plug 'jelera/vim-javascript-syntax'

" Jade syntax
Plug 'digitaltoad/vim-pug'

" Zen coding
Plug 'mattn/emmet-vim'

" vim indents HTML very poorly on it's own. This fixes a lot of that.
Plug 'indenthtml.vim'

" Initialize plugin system
call plug#end()

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

set nocompatible " Fuck VI... That's for grandpas.
filetype off

filetype plugin indent on " Filetype auto-detection

set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.

" We have VCS -- we don't need this stuff.
set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just annoying. Who likes them?

" don't nag me when hiding buffers
set hidden " allow me to have buffers with unsaved changes.
set autoread " when a file has changed on disk, just load it. Don't ask.
au FocusGained,BufEnter * :checktime

" Make search more sane
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
set gdefault " use the `g` flag by default.

" leader is a key that allows you to have your own "namespace" of keybindings.
" You'll see it a lot below as <leader>
let mapleader = ","

" bindings for easy split nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use sane regex's when searching
" nnoremap / /\v
" vnoremap / /\v

" Clear match highlighting
" noremap <leader><space> :noh<cr>:call clearmatches()<cr>
noremap <leader><space> :noh<cr>


" Plugin settings:
set noshowmode

" CtrlP configuration
" Let ctrlp have up to 30 results.
let g:ctrlp_max_height = 30
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" UltiSnippet configuration
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-l>"
let g:UltiSnipsSnippetDirectories=["/home/larkvincer/.config/nvim/UltiSnips"]

" Ale config
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
" let g:ale_javascript_eslint_executable='/home/larkvincer/.nvm/versions/node/v8.11.1/bin/eslint'

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Airline config
let g:airline_powerline_fonts = 1

" You complete me config
let g:ycm_autoclose_preview_window_after_completion = 1


" NERDTreeToggle configuration
map <C-\> :NERDTreeToggle<CR>

" Syntax highlighting
syntax on
set lcs=tab:——,trail:·,eol:¬
set list
set number
set mouse=a
filetype plugin on

set iminsert=0
set imsearch=0
set encoding=UTF-8
