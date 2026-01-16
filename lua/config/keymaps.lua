-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

map("n", "<leader>cp", '<cmd>let @+=expand("%")<cr>', { desc = "Copy path" })
map("n", "J", "mzJ`z", { desc = "Join lines keep cursor" })
map({ "n", "v" }, "<leader>p", '"_dP', { desc = "Paste without overwriting register" })
map({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without overwriting register" })
vim.keymap.del("n", "<leader>cd")
map("n", "gl", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

if vim.g.vscode then
  local vscode = require("vscode")
  map("n", "<leader>oo", function()
    vscode.call("outline.focus")
  end)
end
