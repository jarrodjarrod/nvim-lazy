return {
  "folke/snacks.nvim",
  opts = {
    explorer = { enabled = false },
    lazygit = { enabled = true },
  },
      -- stylua: ignore
      keys = {
        { "<leader>sf", function() Snacks.picker.files({ cmd = "rg", args = { "--files", "--hidden", "--glob", "!.git/*" } }) end, desc = "Find Files" },
        { "<leader>fs", function() Snacks.picker.grep({ search = function() return vim.fn.input("Grep for > ") end, }) end, desc = "Grep for Input" },
        { "<leader><space>", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
        { "<leader>z", function() Snacks.lazygit() end, desc = "LazyGit" },
        { "<leader>e", false },
        { "<leader>sg", false },
        { "<leader>sG", false },
        { "<leader>lg", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
        { "<leader>lG", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
      },
}
