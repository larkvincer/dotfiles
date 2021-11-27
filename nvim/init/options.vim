set termguicolors

set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set expandtab
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.

filetype plugin indent on " Filetype auto-detection
filetype plugin on " Filetype auto-detection

" We have VCS -- we don't need this stuff.
set nobackup
set nowritebackup
set noswapfile

set hidden " allow me to have buffers with unsaved changes.

" Make search more sane
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

" autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
" autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear


" Fix for devicons
set lcs=tab:—-,trail:·,eol:¬
set list
set number
set mouse=a
set wrap!
set cursorline

" let g:airline_theme= 'one'
colorscheme github_light

set iminsert=0
set imsearch=0
set encoding=UTF-8

" Ukranian keymap
set langmap=~ФИСВУАПРШОЛДЬТЩЗЙКІЕГМЦЧНЯ'ХЇЖ;~ABCDEFGHIJKLMNOPQRSTUVWXYZ'{}:,
			\фисвуапршолдьтщзйкіегмцчня;abcdefghijklmnopqrstuvwxyz
