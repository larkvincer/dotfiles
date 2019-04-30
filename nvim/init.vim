" True color
set termguicolors

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')
" Themes
Plug 'ryanoasis/vim-devicons'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'chriskempson/base16-vim'

" Make sure you use single quotes
Plug 'scrooloose/nerdtree'

" Draw colors on color hash
Plug 'lilydjwg/colorizer'

" Editor config plugin
Plug 'editorconfig/editorconfig-vim'

" Fuzzy finder -- absolutely must have.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" LaTex
Plug 'donRaphaco/neotex', { 'for': 'tex' }

" Close buffers, human way
Plug 'Asheq/close-buffers.vim'

" Move like a god
Plug 'easymotion/vim-easymotion'

" Support for easily toggling comments.
Plug 'tpope/vim-commentary'

" Surround with stuff
Plug 'tpope/vim-surround'

" Lint engine
Plug 'w0rp/ale'

" Snippets engine
Plug 'sirver/ultisnips'

" Brackets autocomplete
Plug 'git://github.com/jiangmiao/auto-pairs.git'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jason0x43/vim-js-indent'

" git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Jade syntax
Plug 'digitaltoad/vim-pug'

" Zen coding
Plug 'mattn/emmet-vim'

" vim indents HTML very poorly on it's own. This fixes a lot of that.
Plug 'indenthtml.vim'

" Initialize plugin system
call plug#end()

set nocompatible " Fuck VI... That's for grandpas.
" filetype off

filetype plugin indent on " Filetype auto-detection
filetype plugin on " Filetype auto-detection

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
set updatetime=250
" au CursorHold * checktime

" Make search more sane
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
" set gdefault " use the `g` flag by default.

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

" UltiSnippet configuration
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-l>"
let g:UltiSnipsSnippetDirectories=["/home/larkvincer/.config/nvim/UltiSnips"]

" Ale config
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_completion_enabled = 1
" let g:ale_linter_aliases = {'typescriptreact': 'typescript', 'typescript.tsx': 'typescript'}
" let g:ale_linters= {
" 			\'typescript': ['tslint', 'tsserver']
" 			\}
" let g:ale_fixers = { 'typescript': ['tslint'], 'typescript.tsx': ['tslint'] }
" let g:ale_linters_explicit = 1
map <silent> <C-]> :ALEGoToDefinition<CR>
map <C-'> :ALEFindReferences<CR>
map <C-i> :ALEHover<CR>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
inoremap <C-space> <C-x><C-o>

" Airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Devicons config
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

" Ukranian keymap
set langmap=~ФИСВУАПРШОЛДЬТЩЗЙКІЕГМЦЧНЯ'ХЇЖ;~ABCDEFGHIJKLMNOPQRSTUVWXYZ'{}:,
			\фисвуапршолдьтщзйкіегмцчня;abcdefghijklmnopqrstuvwxyz

" NERDTreeToggle configuration
map <C-\> :NERDTreeToggle<CR>
au CursorHold * if exists("t:NerdTreeBufName") | call <SNR>15_refreshRoot() | endif

" Syntax highlighting
" Fix for devicons
if !exists('g:syntax_on') | syntax enable | endif
set lcs=tab:—-,trail:·,eol:¬
set list
set number
set mouse=a
filetype plugin on
colorscheme PaperColor
set background=light


set iminsert=0
set imsearch=0
set encoding=UTF-8
