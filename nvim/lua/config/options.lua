-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = false
vim.opt.spelllang = { "en", "cjk" }

-- LazyVim のデフォルトは 2 だが、
-- 勝手に記号を隠されると困るのでオフにする。
vim.opt.conceallevel = 0
