-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "<leader>cp", '<cmd>let @+=expand("%:.")<cr>', { desc = "Copy Path (relative)" })
map("n", "<leader>cP", '<cmd>let @+=expand("%:p")<cr>', { desc = "Copy Path (absolute)" })
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true, desc = "Down by visual line" })
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true, desc = "Up by visual line" })
map("n", "J", "mzJ`z", { desc = "Join lines keep cursor" })
map("x", "<leader>p", '"_dP', { desc = "Paste without overwriting register" })
map({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without overwriting register" })
pcall(vim.keymap.del, "n", "<leader>cd")
map("n", "gl", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

-- free <leader>l as a prefix (grep/format maps live under it) and move Lazy to lz
pcall(vim.keymap.del, "n", "<leader>l")
map("n", "<leader>lz", "<cmd>Lazy<cr>", { desc = "Lazy" })

if vim.g.vscode then
  local vscode = require("vscode")
  map("n", "<leader>oo", function()
    vscode.call("outline.focus")
  end)
end
