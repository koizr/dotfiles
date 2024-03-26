set termguicolors
set signcolumn=yes

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

" ====== Plugins ======
packadd vim-jetpack
call jetpack#begin()
" bootstrap
Jetpack 'tani/vim-jetpack', { 'opt': 1 }
" linter
Jetpack 'https://github.com/dense-analysis/ale'
" filer
Jetpack 'lambdalisue/fern.vim'
Jetpack 'lambdalisue/nerdfont.vim'
Jetpack 'lambdalisue/fern-renderer-nerdfont.vim'
" color scheme
Jetpack 'EdenEast/nightfox.nvim'
" status line
Jetpack 'nvim-lualine/lualine.nvim'
Jetpack 'kyazdani42/nvim-web-devicons'
" buffer line
Jetpack 'nvim-tree/nvim-web-devicons'
Jetpack 'akinsho/bufferline.nvim', { 'tag': 'v3.1.0' }
" git
Jetpack 'lewis6991/gitsigns.nvim'
" syntax highlight
Jetpack 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
" code jump
Jetpack 'phaazon/hop.nvim', { 'branch': 'v2' }
" TODO: completion
" TODO: lsp
call jetpack#end()

nnoremap <silent><C-q> :Fern . -reveal=%<CR>
nnoremap <silent><C-S-q> :Fern . -drawer -toggle<CR>
let g:fern#renderer = "nerdfont"

colorscheme nightfox

lua << END
require('lualine').setup()
require("bufferline").setup()
require('gitsigns').setup()
require('hop').setup()
END

nnoremap s :HopChar1<CR>
nnoremap <S-s> :HopPattern<CR>
