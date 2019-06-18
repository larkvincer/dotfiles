" True color
set termguicolors

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')
" Themes
Plug 'ryanoasis/vim-devicons'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'

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
Plug 'tpope/vim-repeat'

" Autocompletion engine
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}


" Snippets engine
Plug 'sirver/ultisnips'

" Brackets autocomplete
Plug 'git://github.com/jiangmiao/auto-pairs.git'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


Plug 'othree/yajs.vim'
Plug 'MaxMEllon/vim-jsx-pretty'

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
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-l>"
let g:UltiSnipsSnippetDirectories=["/home/larkvincer/.config/nvim/UltiSnips"]

"COC configuration
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
nmap <silent> [e <Plug>(coc-diagnostic-prev)
nmap <silent> ]e <Plug>(coc-diagnostic-next)

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
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

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

"Tigris parser
let g:tigris#enabled = 1

" Airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Devicons config
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
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

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)


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



" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

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
set expandtab
set list
set number
set mouse=a
filetype plugin on
colorscheme gruvbox
set background=dark
set cursorline
set background=light
syntax on


set iminsert=0
set imsearch=0
set encoding=UTF-8
