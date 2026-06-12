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
    -- alt-h/alt-i in-picker toggles are captured by the window manager (rift/aerospace)
    { "<leader>sH", LazyVim.pick("files", { hidden = true }), desc = "Find Hidden Files" },
    { "<leader>sI", LazyVim.pick("files", { hidden = true, ignored = true }), desc = "Find Ignored Files" },
    { "<leader>fs", function() Snacks.picker.grep({ search = function() return vim.fn.input("Grep for > ") end }) end, desc = "Grep for Input" },
  },
}
