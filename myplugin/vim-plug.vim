" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'python-mode/python-mode'
Plug 'vim-scripts/indentpython.vim'
Plug 'tmhedberg/SimpylFold'
Plug 'skywind3000/asyncrun.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jiangmiao/auto-pairs'
" Make sure you use single quotes
Plug 'flazz/vim-colorschemes'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
" Initialize plugin system
call plug#end()
"airline configuration#######################################################
let g:airline_theme = "jellybeans"
let g:airline_detect_modified=1
"let g:airline_left_sep='>'
"let g:airline_right_sep='<'
let g:airline_detect_spell=1
let g:airline_inactive_collapse=1
let g:airline_powerline_fonts = 1
set laststatus=2
"set ambiwidth=double
set noshowmode
let g:bufferline_echo = 0
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
let g:airline_skip_empty_sections = 1
"autodeletbuffer from airline
autocmd BufDelete * call airline#extensions#tabline#buflist#invalidate()
augroup QuickfixStatus
    au! BufWinEnter quickfix setlocal
        \ statusline=%t\ [%{g:asyncrun_status}]\ %{exists('w:quickfix_title')?\ '\ '.w:quickfix_tit    le\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
augroup END

"simple fold#######################################################################
let g:SimpylFold_docstring_preview = 1

"pymode ############################################################
let g:UltiSnipsUsePythonVersion = 3
let g:pymode_python = 'python3'
let g:pymode_rope_completion = 0
"AsyncRun ########################################################
" set enable AsyncRun to access zshrc
"Bug by setting shell to zsh vim-fugitive would hangs, diable it
"set shellcmdflag=-ci

"vflazz/vim-colorscheme ###########################################
"colorscheme Monokai
