" Brian Rieger's .vimrc

execute pathogen#infect()

set nocompatible " disables vi compatibility, improves vim functionality

syntax on	" enable syntax highlighting

set background=dark
set t_Co=256
colorscheme spacegray "awesome colorscheme

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

filetype plugin indent on

" HTML file settings
autocmd FileType html setlocal shiftwidth=2 tabstop=2

" jsbeautify command mappings
autocmd FileType javascript noremap <buffer> <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
