" ====== ファイル =======
" vi 互換モードで動作させない。互換モードはいろいろ問題がある
set nocompatible
"文字コードをUFT-8に設定
set fenc=utf-8
set encoding=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" ファイルタイプ検出及び各種プラグインを有効にする
filetype plugin indent on

" ====== 入力 =======
" インデントはスマートインデント
set smartindent
" コマンドラインの補完
set wildmode=list:longest
" BackSpace の挙動を変える
set backspace=indent,eol,start

" ====== tab =======
" 不可視文字を可視化(タブが「|_」と表示される)
set list listchars=tab:\|\_
" Tab文字を入力した時に半角スペースにする
set expandtab
" タブを含んだファイルを開いた時に表示するスペースの数
set tabstop=4
" 自動インデント時に入力されるスペースの数
set shiftwidth=4
" タブキーを押した時に入力されるスペースの数
set softtabstop=4
" 可視化したタブの文字色を設定
hi SpecialKey ctermfg=darkgray

" ====== 検索 =======
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打で検索ハイライト解除
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>

" ====== キーリマップ ======
" バッファ関連
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>
" 移動しやすくする
nnoremap <S-h> ^
nnoremap <S-l> $
" フォーマットしやすくする
nnoremap == gg= G''
" x での削除はレジスタに保存しない
nnoremap x "_x

" ====== clipboard ======
set clipboard+=unnamed
