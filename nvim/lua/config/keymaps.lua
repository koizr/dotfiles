-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>yL", function()
  local text = vim.fn.expand("%:.") .. ":" .. vim.fn.line(".")
  vim.fn.setreg("+", text)
  vim.notify("Copied: " .. text)
end, { desc = "Copy file path:line to clipboard" })

vim.keymap.set("v", "<leader>yL", function()
  local start_line = vim.fn.line("v")
  local end_line = vim.fn.line(".")
  if start_line > end_line then
    start_line, end_line = end_line, start_line
  end

  local text = vim.fn.expand("%:.") .. ":" .. start_line .. "-" .. end_line
  vim.fn.setreg("+", text)
  vim.notify("Copied: " .. text)
end, { desc = "Copy file path:line-range to clipboard" })

vim.keymap.set("n", "<leader>fa", function()
  Snacks.explorer.reveal()
end, { desc = "Reveal current file in explorer" })
