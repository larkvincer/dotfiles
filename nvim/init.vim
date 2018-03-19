" True color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  " set termguicolors
endif
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')
" Dracula theme
Plug 'dracula/vim'

" Make sure you use single quotes
Plug 'scrooloose/nerdtree'

" Editor config plugin
Plug 'editorconfig/editorconfig-vim'

" Fuzzy finder -- absolutely must have.
Plug 'kien/ctrlp.vim'

" Support for easily toggling comments.
Plug 'tpope/vim-commentary'

" Lint engine
Plug 'w0rp/ale'

" Complete engine
Plug 'valloric/youcompleteme'

" C# fucking IDE
Plug 'OmniSharp/omnisharp-vim'
" Use for autostarting omnisharp server
Plug 'tpope/vim-dispatch'

" Snippets engine
Plug 'sirver/ultisnips'

" Brackets autocomplete
Plug 'git://github.com/jiangmiao/auto-pairs.git'

" Airline
Plug 'vim-airline/vim-airline'

" git integration
Plug 'tpope/vim-fugitive'

" Git difference
Plug 'airblade/vim-gitgutter'

" Javascript syntax
Plug 'jelera/vim-javascript-syntax'

" jsx syntax highliting
Plug 'mxw/vim-jsx'

" Zen coding
Plug 'mattn/emmet-vim'

" vim indents HTML very poorly on it's own. This fixes a lot of that.
Plug 'indenthtml.vim'

" I write markdown a lot. This is a good syntax.
Plug 'tpope/vim-markdown'

" Initialize plugin system
call plug#end()


set nocompatible " Fuck VI... That's for grandpas.
filetype off

" We have to turn this stuff back on if we want all of our features.
filetype plugin indent on " Filetype auto-detection

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.
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

" Make search more sane
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
set gdefault " use the `g` flag by default.

" allow the cursor to go anywhere in visual block mode.
set virtualedit+=block


" leader is a key that allows you to have your own "namespace" of keybindings.
" You'll see it a lot below as <leader>
let mapleader = ","

" So we don't have to press shift when we want to get into command mode.
" nnoremap ; :
" vnoremap ; :

" So we don't have to reach for escape to leave insert mode.
inoremap jj <esc>

" create new vsplit, and switch to it.
" noremap <leader>v <C-w>v

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

" Quick buffer switching - like cmd-tab'ing
" nnoremap <leader><leader> <c-^>


" Visual line nav, not real line nav
" If you wrap lines, vim by default won't let you move down one line to the
" wrapped portion. This fixes that.
" noremap j gj
" noremap k gk

" Plugin settings:
" Below are some 'sane' (IMHO) defaults for a couple of the above plugins I
" referenced.

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

" Ale config
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Airline config
let g:airline_powerline_fonts = 1

" You complete me config
let g:ycm_autoclose_preview_window_after_completion = 1

" NERDTreeToggle configuration
map <C-\> :NERDTreeToggle<CR>

" Colorscheme configuration
" Syntax highlighting
syntax on
colorscheme dracula
let loaded_matchparen = 1

highlight Pmenu ctermfg=2 ctermbg=3 guifg=#dddddd guibg=#333333

filetype plugin on
let g:OmniSharp_server_type = 'roslyn'

set listchars=tab:▸\ ,eol:¬
set listchars+=space:·
set list
set number
set relativenumber
set cursorline
set mouse=a
filetype plugin on

set iminsert=0
set imsearch=0
