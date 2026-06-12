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
    { "<leader>lg", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    { "<leader>lG", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
    { "<leader>lh", LazyVim.pick("live_grep", { hidden = true }), desc = "Grep Hidden" },
    { "<leader>z", function() Snacks.lazygit({ cwd = LazyVim.root.git() }) end, desc = "LazyGit (Root Dir)" },
    { "<leader>Z", function() Snacks.lazygit() end, desc = "LazyGit (cwd)" },
  },
}
