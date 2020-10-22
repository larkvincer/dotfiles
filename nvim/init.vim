" True color
set termguicolors

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')

" Themes
Plug 'bluz71/vim-moonfly-colors'
Plug 'morhetz/gruvbox'

" Make sure you use single quotes
Plug 'scrooloose/nerdtree'

" Draw colors on color hash
Plug 'lilydjwg/colorizer'

" Icons
Plug 'ryanoasis/vim-devicons'

" Editor config plugin
Plug 'editorconfig/editorconfig-vim'

" Fuzzy finder
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }

" Close buffers, human way
Plug 'Asheq/close-buffers.vim'

" Move like a god
Plug 'easymotion/vim-easymotion'

" Support for easily toggling comments.
Plug 'tpope/vim-commentary'

" Surround with stuff
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Autocompletion engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Brackets autocomplete
Plug 'git://github.com/jiangmiao/auto-pairs.git'

" Auto buffer reload if file changed
Plug 'djoshea/vim-autoread'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'othree/yajs.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'kchmck/vim-coffee-script'

" git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'rhysd/git-messenger.vim'

" Align columns
Plug 'junegunn/vim-easy-align'

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
" set updatetime=250
" set autoread " when a file has changed on disk, just load it. Don't ask.
" trigger `autoread` when files changes on disk
" autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" notification after file change

" Make search more sane
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
" set gdefault " use the `g` flag by default.

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

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

" Clear match highlighting.
map <leader><space> :noh<cr>

" Find file in project structure.
map <leader>s :NERDTreeFind<cr>

" Code search.
map <leader>p :e#<cr>
map <leader>f :Clap files<cr>
map <leader>a :Clap grep<cr>
map <leader>l :Clap lines<cr>
map <leader>b :Clap buffers<cr>
let g:clap_insert_mode_only=1
let g:clap_popup_border='sharp'
let g:clap_search_box_border_style='nil'
let g:clap_current_selection_sign = { 'text': '', "linehl": "ClapCurrentSelection" }
let g:clap_project_root_markers=['package.json', '.root', '.git', '.git/']

" Plugin settings:
set noshowmode

" Vimtex compiler settings
let g:vimtex_compiler_engine="xelatex"

" UltiSnippet configuration
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-l>"
let g:UltiSnipsSnippetDirectories=["/home/larkvincer/.config/nvim/UltiSnips"]

"COC configuration
" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [e <Plug>(coc-diagnostic-prev)
nmap <silent> ]e <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gr <Plug>(coc-references)

vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Highlight symbol under cursor on CursorHold
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Quick switch between buffers
map gn :bn<cr>
map gp :bp<cr>

" Airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Devicons config
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
set guifont=Iosevka\ Medium\ Nerd\ Font\ Complete\ 15


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)


" Add diagnostic info for https://github.com/itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }

" Ukranian keymap
set langmap=~ФИСВУАПРШОЛДЬТЩЗЙКІЕГМЦЧНЯ'ХЇЖ;~ABCDEFGHIJKLMNOPQRSTUVWXYZ'{}:,
			\фисвуапршолдьтщзйкіегмцчня;abcdefghijklmnopqrstuvwxyz

" NERDTreeToggle configuration
map <C-\> :NERDTreeToggle<CR>
au CursorHold * if exists("t:NerdTreeBufName") | call <SNR>15_refreshRoot() | endif

" Enable folding
" set foldmethod=syntax "syntax highlighting items specify folds
" set foldcolumn=1 "defines 1 col at window left, to indicate folding
" let javaScript_fold=1 "activate folding by JS syntax
" set foldlevelstart=99 "start file with all folds opened

" Syntax highlighting
" Fix for devicons
if !exists('g:syntax_on') | syntax enable | endif
set lcs=tab:—-,trail:·,eol:¬
set expandtab
set list
set number
set mouse=a
filetype plugin on
let g:gruvbox_italic=1
hi Comment gui=italic cterm=italic
hi htmlArg gui=italic cterm=italic
colorscheme gruvbox
set cursorline
set background=dark
if !exists('g:syntax_on')
	syntax enable
endif


set iminsert=0
set imsearch=0
set encoding=UTF-8
