" Brian Rieger's .vimrc

"----------------------------------------------------------

execute pathogen#infect()

set nocompatible " disables vi compatibility, improves vim functionality
syntax on	" enable syntax highlighting
"filetype indent plugin on
colorscheme badwolf "awesome colorscheme
set background=dark
set wildmenu	" improved command-line completion
set showcmd	" show partial commands in the last line of the screen
set autoindent	" maintain indentation level when inserting on the next line
set ruler	" diplay cursor location
set confirm	" if command fails do to unsaved changes, ask to save file instead of outright failing
set tabstop=4	" number of visual spaces per tab
set softtabstop=4	" number of spaces in tab when editing
set shiftwidth=4    " ??
set expandtab	" tabs are spaces
set number	" show line numbers

" search settings
set ignorecase  " ignore case
set smartcase   " override ignorecase if search contains uppercase chars
set showmatch	" highlight matching [{()}]
set incsearch	" search as characters are entered
set hlsearch	" highlight matches
set guioptions-=T   " hide the toolbar

filetype off
filetype plugin indent on

" jsbeautify command mappings
autocmd FileType javascript noremap <buffer> <c-f> :call JsBeautify()<cr>
