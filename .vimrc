set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
call vundle#begin()
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
"Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'godlygeek/tabular'
Plugin 'miyakogi/seiya.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'c9s/helper.vim'
Plugin 'c9s/vikube.vim'
Plugin 'sjl/badwolf'
Plugin 'andrewstuart/vim-kubernetes'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'junegunn/fzf.vim'
Plugin 'morhetz/gruvbox' 
Plugin 'hashivim/vim-terraform'
Plugin 'iamcco/markdown-preview.nvim'


let NERDTreeShowHidden=1
let g:NERDTreeHijackNetrw=1
let NERDTreeQuitOnOpen = 0
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

let g:seiya_auto_enable=1

set viminfo='100,<1000,s100,h

autocmd StdinReadPre * let s:std_in=1
set cursorline     
set cursorcolumn
set background=dark
call vundle#end()            " required
filetype plugin indent on    " required
"let g:powerline_pycmd="py3" 
set t_Co=256
syntax on
set paste
filetype plugin indent on
set directory=/tmp
set nu
colorscheme badwolf
"set rtp+=/Users/Valentin/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
"set rtp+=/home/vouvrard/.local/lib/python3.6/site-packages/powerline/bindings/vim

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

"set-option -g default-command "reattach-to-user-namespace -l zsh"
set laststatus=2
if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Inconsolata\ for\ Powerline:h15
   endif
endif
set pastetoggle=<F2>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
map <C-f> :Files .<CR>
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:vim_markdown_folding_disabled = 1
"call plug#begin('~/.vim/plugged')
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
"call plug#end()
syntax enable  
filetype plugin on  
set number  
let g:go_disable_autoinstall = 0
" Highlight
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1  
let g:neocomplete#enable_at_startup = 1
set backspace=indent,eol,start
let g:go_version_warning = 0
let g:vikube_autoupdate = 1
let g:vikube_default_logs_tail = 1000
let g:NERDTreeHijackNetrw=0



" Build/Test on save.
augroup auto_go
	autocmd!
	autocmd BufWritePost *.go :GoBuild
	autocmd BufWritePost *_test.go :GoTest
augroup end





" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" for path with space
" valid: `/path/with\ space/xxx`
" invalid: `/path/with\\ space/xxx`
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0,
    \ 'toc': {}
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or empty for random
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

" set default theme (dark or light)
" By default the theme is define according to the preferences of the system
let g:mkdp_theme = 'dark'
