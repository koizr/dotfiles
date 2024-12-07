vim.o.termguicolors = true
vim.o.signcolumn = "yes"

vim.opt.helplang = 'ja', 'en'

-- ====== ファイル設定 ======
-- vi互換モードをオフ
vim.o.compatible = false
-- 文字コードをUTF-8に設定
vim.o.fileencoding = "utf-8"
vim.o.encoding = "utf-8"
-- バックアップファイルを作らない
vim.o.backup = false
-- スワップファイルを作らない
vim.o.swapfile = false
-- ファイルが変更されたら自動で読み直す
vim.o.autoread = true
-- バッファが編集中でもその他のファイルを開けるように
vim.o.hidden = true
-- ファイルタイプ検出及び各種プラグインを有効化
vim.cmd("filetype plugin indent on")

-- ====== 表示設定 ======
-- 行番号を表示
vim.wo.number = true
-- 現在の行を強調表示
vim.wo.cursorline = true
-- 現在の列を強調表示
-- vim.wo.cursorcolumn = true
-- ビープ音を可視化
vim.o.visualbell = true
-- 括弧入力時の対応する括弧を表示
vim.o.showmatch = true
-- シンタックスハイライト
vim.cmd("syntax enable")

-- ====== 入力設定 ======
-- スマートインデント
vim.o.smartindent = true
-- コマンドライン補完
vim.o.wildmode = "list:longest"
-- BackSpace の挙動を設定
vim.o.backspace = "indent,eol,start"

-- ====== タブ設定 ======
-- 不可視文字を可視化
vim.o.list = true
-- タブを可視化 (タブを「|_」と表示)
vim.o.listchars = "tab:|\\_"
-- Tabキーを押した時にスペースを入力
vim.o.expandtab = true
-- タブの表示幅
vim.o.tabstop = 4
-- 自動インデント時のスペース数
vim.o.shiftwidth = 4
-- タブキーで入力するスペース数
vim.o.softtabstop = 4
-- タブの可視化文字色を設定
vim.cmd("hi SpecialKey ctermfg=darkgray")

-- ====== 検索設定 ======
-- 小文字の検索文字列は大小区別しない
vim.o.ignorecase = true
-- 大文字が含まれている場合は区別して検索
vim.o.smartcase = true
-- インクリメンタルサーチ
vim.o.incsearch = true
-- 最後まで検索したら最初に戻る
vim.o.wrapscan = true
-- 検索語をハイライト表示
vim.o.hlsearch = true
-- ESC連打で検索ハイライト解除
vim.keymap.set('n', '<Esc><Esc>', ':nohlsearch<CR><Esc>', { noremap = true, silent = true })

-- ====== キーマップ設定 ======
vim.keymap.set('n', '<C-n>', ':bn<CR>', { noremap = true })
vim.keymap.set('n', '<C-p>', ':bp<CR>', { noremap = true })
vim.keymap.set('n', '<S-h>', '^', { noremap = true })
vim.keymap.set('n', '<S-l>', '$', { noremap = true })
-- xでの削除はレジスタに保存しない
vim.keymap.set('n', 'x', '"_x', { noremap = true })

-- ====== クリップボード設定 ======
vim.o.clipboard = "unnamedplus"

-- ====== プラグイン設定 ======
-- Jetpackを使ってプラグイン管理
vim.cmd('packadd vim-jetpack')
require('jetpack.packer').startup(function(use)
    -- bootstrap
    use 'tani/vim-jetpack'
    -- Linter
    use 'dense-analysis/ale'
    -- Filer
    use 'lambdalisue/fern.vim'
    use 'lambdalisue/nerdfont.vim'
    use 'lambdalisue/fern-renderer-nerdfont.vim'
    -- Color scheme
    use 'EdenEast/nightfox.nvim'
    -- Status line
    use 'nvim-lualine/lualine.nvim'
    use 'kyazdani42/nvim-web-devicons'
    -- Buffer line
    use 'akinsho/bufferline.nvim'
    -- Git
    use 'lewis6991/gitsigns.nvim'
    -- Syntax highlight
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- Code jump
    use { 'phaazon/hop.nvim', branch = 'v2' }
    -- TODO: completion
    -- TODO: lsp
end)

-- プラグイン設定のロード
require('lualine').setup()
require('bufferline').setup()
require('gitsigns').setup()
require('hop').setup()

-- Fern 設定
vim.keymap.set('n', '<C-q>', ':Fern . -reveal=%<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-q>', ':Fern . -drawer -toggle<CR>', { noremap = true, silent = true })
vim.g['fern#renderer'] = "nerdfont"

-- カラースキームの設定
vim.cmd("colorscheme nightfox")

-- hop.nvim のキーマップ
vim.keymap.set('n', 's', ':HopChar1<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<S-s>', ':HopPattern<CR>', { noremap = true, silent = true })
