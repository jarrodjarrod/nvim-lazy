return {
  "folke/snacks.nvim",
  opts = {
    explorer = { replace_netrw = false }, -- Oil owns directory buffers
    picker = {
      sources = {
        explorer = { hidden = true },
      },
    },
  },
  -- stylua: ignore
  keys = {
    { "<leader>e", false }, -- freed for Oil
    { "<leader>fs", function() Snacks.picker.grep({ search = function() return vim.fn.input("Grep for > ") end }) end, desc = "Grep for Input" },
  },
}
