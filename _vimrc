" --- Settings
filetype plugin indent on " enable filetype detection
syntax on                 " enable syntax highlighting

"set lazyredraw    " Don't redraw the screen when using macros and other automated things
set number        " Enable line numbering
set report=0      " Threshold for reporting number of lines changed, 0 = always
set showcmd       " Show the commands in the status line while you time them.
set hidden        " Make buffers not be discarded when you just to another
set mouse=a       " Enable the mouse in all modes
set shortmess=aAI " Disable/shorten some messages
" Make window split borders blank
set fillchars=vert:\ ,stl:\ ,stlnc:\
" Text formatting options
set fo=rqn1
" The statusline
set statusline=[%n]\ [%t]\ [%M%R%Y]%=[%l,%c,%p%%]

set autoindent    " Set this particular mode of indenting, see :h indent.txt
set smartindent
set noexpandtab   " Don't use spaces when tabbing
set shiftwidth=4  " Number of spaces to use for indenting
set tabstop=4     " tabstop..
set softtabstop=4

set hlsearch " Highlight search results
set incsearch  " Move the cursor to the first result that matches while typing
set nowrap     " Don't wrap lines
set wildmenu   " A nice menu for tab completion on the modeline

set foldenable        " Enable folding
set foldcolumn=4      " Set the foldcolumn on the left side
set foldmethod=syntax " Set the folding method to manual (...)
set foldlevel=0       " Don't fold anything but do make the folds

set backspace=2                     " Backspace has to work nicely
set whichwrap=b,s,h,l,<,>,[,]       " Make movement work nicely
set list listchars=tab:\|\ ,trail:· " Display these characters for whitespace
set scrolloff=10                    " Keep 10 lines on the screen
set laststatus=2                    " I always want a statusline

set backup                         " Enable making backups
set backupdir=$VIM\vimfiles\backup " Set the backup file folder
set directory=$VIM\vimfiles\temp   " Set the tamp file folder

set complete+=k           " scan the files given with the 'dictionary' option

" -- AutoCommands
autocmd BufEnter * :syntax sync fromstart " ensure every file does syntax highlighting (full)

" --- Maps
" I want to save or quit too fast..
map :Q :q
map :W :w

" Use the windows register
map <A-d> "+d
map <A-p> "+p
map <A-y> "+y
imap <A-d> <C-o>"+d
imap <A-p> <C-o>"+p
imap <A-y> <C-o>"+y

" switch buffers with the tab key
map <tab> :bn<cr>
map <S-tab> :bp<cr>

" --- Filetype Specific
" -- XML/XHTML plugin
let xml_use_xhtml = 1

" --- Gvim
if has('gui_running')
       set guioptions=cimgtrb
"       set guifont=Sheldon_Narrow:h10
       set guifont=Bitstream\ Vera\ Sans\ Mono:h8

       colorscheme vj
endif
