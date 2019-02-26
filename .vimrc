"see: http://vimdoc.sourceforge.net/htmldoc/options.html for details

" For multi-byte character support (CJK support, for example):
"set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1
execute pathogen#infect()

filetype off
set runtimepath+=/usr/local/share/lilypond/current/vim/
filetype on
syntax on

set signcolumn=yes

let g:indentLine_color_term = 239

let mapleader = ","

set foldenable
set foldlevelstart=20
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

" persistent_undo settings

if has('persistent_undo')      "check if your vim version supports it
    set undofile                 "turn on the feature
    set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
    endif


set wildmenu
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"set statusline+=%F

set laststatus=2
let g:unit_test_prefix='test_'


" Syntastic Plugin Config
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w =  1 " check on save
let g:syntastic_c_config_file = ".syntastic_c_config" " use this file to confiure check
let g:syntastic_java_javac_config_file_enabled = 1
let g:syntastic_python_checkers = ['pylint']
nnoremap <S-z> :SyntasticReset<CR>
"let g:syntastic_c_config

" Ctrl-P Plugin Config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_by_filename = 1
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_open_new_file = 'h'

let g:yankring_replace_n_pkey = '<m-p>'
let g:yankring_replace_n_nkey = '<m-n>'


" command alises
command WQ wq
command Wq wq
command W w
command Q q
command Test 'Dispatch rake test:all'

nnoremap <leader>v :<C-U>bnext<bar>vspl<bar>bprevious<CR>
nnoremap <leader>h :<C-U>bnext<bar>sp<bar>bprevious<CR>
nnoremap <F3> :<C-U>TUT<CR>
nnoremap 00 :<C-U>Dispatch<space>ctags<space>-R<CR>:<C-U>UpdateTypesFile<CR>
nnoremap -1 :<C-U>Dispatch<space>rake<space>test:all<CR>
"set t_Co=88 "I like my colors
set t_Co=256

"let g:indent_guides_enable_on_vim_startup = 1

set tabstop=4       " Number of spaces that a <Tab> in the file counts for.

set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.

set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.

set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.

set showcmd         " Show (partial) command in status line.

set number          " Show line numbers.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.

set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.

set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.

set ignorecase      " Ignore case in search patterns.

set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.



set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.

set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).

set textwidth=79    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.

set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode.
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)

set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.

set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.

set mouse=a         " Enable the use of the mouse.

set list
set listchars=tab:>-

nnoremap <F3> :<C-U>TUT<CR>

"#nnoremap <C-z> :FixWhitespace<CR>
syn match cLogic "&&\|||\|==\|!="
syn match cSimpleAssignment " = "
syn match cAddressOf " &"

filetype plugin indent on
syntax on

colorscheme DomEasyColor


au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set clipboard=unnamed
filetype plugin on
"colorscheme vibrantink

"
