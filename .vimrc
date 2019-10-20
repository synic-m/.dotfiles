"-------------------------------------------
"----------normal setting-------------------
"fonts 
set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac
"end fonts

"indent { 
set cindent 
"end indent {

"auto indent
set autoindent
"end auto indent

"show cmd
"例)yyの時　下に　y を表示
set showcmd
"end show cmd

"search ignore
"検索時大小の区別を無視
"全部小文字の時に反映
set ignorecase
set smartcase
"end search ignore
"wildmenu
set wildmenu wildmode=list:full

"ts tab -> space
set expandtab


"----------normal setting-------------------
"-------------------------------------------
"
"-----------------------------------------
""--------key mapping----------------------
"esc to alt [
noremap <A-[> <esc>
noremap! <A-[> <esc>
""usキーボードの為のもの
noremap ; :
noremap : ;
"
""({[入力時)}]の自動補完
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>
inoremap < <><left>
"esc の追加<insert>
inoremap <C-L> <esc>
""自動改行時見た目と同じようににカーソルを動かす
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
"commandline時補完
cnoremap <C-k> <up>
cnoremap <C-j> <down>
cnoremap <C-h> <Backspace>
"terminal
nnoremap <C-s> :terminal<cr>
"terminal tab補完
set nocompatible
tnoremap <C-k> <C-\><C-n>
"end terminal
""--------end key mapping-------------------------
"--------------------------------------------
""
"
""----------------------------------------------
"------------setting swp undo------------------
set noundofile
set directory=$HOME/.vim/swp
set backupdir=$HOME/.vim/backup
""------------end setting swp undo------------------
"----------------------------------------------
""
"----------------------------------------------
""---------file type settings-------------------
autocmd BufNewFile,BufRead *.py setfiletype python
autocmd BufNewFile,BufRead *.html set ts=2 |set shiftwidth=2
autocmd BufNewFile,BufRead *.css set ts=2 | set shiftwidth=2
"---------end file type settings-------------------
""--------------------------------------------------
"
"--------------------------------------------------
"-----------plug-vim-------------------------------
call plug#begin()
Plug 'davidhalter/jedi-vim' ,{ 'for': 'python' }
Plug 'mattn/emmet-vim'
"inoremap <C-y> <C-y>
", { 'for': 'html'}
"ファイル表示をしやすくする
Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'
Plug 'scrooloose/nerdtree'
Plug 'thinca/vim-fontzoom'
Plug 'mtth/scratch.vim'

call plug#end()
""-----------end plug-vim---------------------------
"--------------------------------------------------
"
"------------------------------------------------------
"plugin settings unit.vim------------------------------
" バッファ一覧
noremap <C-P> :Unite buffer<CR>
" ファイル一覧
"noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
" sourcesを「今開いているファイルのディレクトリ」とする
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" ウィンドウを分割して開く
"au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
"au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
"ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')

"ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q
"-------------------------------------------------------
"
"-------------------------------------------------------
"nerdtree setting
noremap <C-N> :NERDTree<CR>
let NERDTreeShowHidden=1
"end nerdtree setting
"---------------------------------------------------
