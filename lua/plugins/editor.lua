return {
  {
    "stevearc/oil.nvim",
    ---@module 'oil' @type oil.SetupOpts
    opts = {
      view_options = { show_hidden = true },
    },
    keys = {
      { "-", "<cmd>Oil<cr>", desc = "Open Parent Directory" },
      { "<leader>e", "<cmd>Oil<cr>", desc = "File Explorer (Oil)" },
    },
    lazy = false,
  },
  {
    "gbprod/yanky.nvim",
    keys = {
      -- the extra maps <leader>p in n+x mode; the x-mode map would clobber the
      -- paste-without-yanking keymap once yanky loads, so re-add it as n-only
      { "<leader>p", false, mode = { "n", "x" } },
      { "<leader>p", "<cmd>YankyRingHistory<cr>", desc = "Open Yank History" },
    },
  },
}
