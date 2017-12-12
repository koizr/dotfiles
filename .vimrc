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

" ====== 表示 =======
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の列を強調表示
"set cursorcolumn
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" シンタックスハイライト
syntax enable

" ====== ステータスライン =======
" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
set laststatus=2
" 入力中のコマンドをステータスに表示する
set showcmd
" ファイル名表示
set statusline=%F
" 変更チェック表示
set statusline+=%m
" 読み込み専用かどうか表示
set statusline+=%r
" ヘルプページなら[HELP]と表示
set statusline+=%h
" プレビューウインドウなら[Prevew]と表示
set statusline+=%w
" これ以降は右寄せ表示
set statusline+=%=
" file encoding
set statusline+=[ENC=%{&fileencoding}]
" 現在行数/全行数
set statusline+=[LOW=%l/%L]

" ====== 移動 =======
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

" ====== 入力 =======
" インデントはスマートインデント
set smartindent
" コマンドラインの補完
set wildmode=list:longest
" BackSpace の挙動を変える
set backspace=indent,eol,start

" ====== tab =======
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4

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
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nmap <C-j><C-j> :nohlsearch<CR><Esc>

" ====== キーリマップ ======
" Esc を押しやすい Ctrl-J に割り当て
imap <C-j> <Esc>
nmap <C-j> <Esc>
vmap <C-j> <Esc>

