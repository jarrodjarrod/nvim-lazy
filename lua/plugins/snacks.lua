return {
  "folke/snacks.nvim",
  opts = {
    explorer = { enabled = true },
    lazygit = { enabled = true },
    picker = {
      sources = {
        explorer = {
          finder = "explorer",
          sort = { fields = { "sort" } },
          supports_live = true,
          tree = true,
          watch = true,
          diagnostics = true,
          diagnostics_open = false,
          git_status = true,
          git_status_open = false,
          git_untracked = true,
          follow_file = true,
          focus = "list",
          auto_close = false,
          jump = { close = false },
          layout = { preset = "sidebar", preview = false },
          hidden = true,
          -- to show the explorer to the right, add the below to
          -- your config under `opts.picker.sources.explorer`
          -- layout = { layout = { position = "right" } },
          formatters = {
            file = { filename_only = true },
            severity = { pos = "right" },
          },
          matcher = { sort_empty = false, fuzzy = false },
          config = function(opts)
            return require("snacks.picker.source.explorer").setup(opts)
          end,
          win = {
            list = {
              keys = {
                ["<BS>"] = "explorer_up",
                ["l"] = "confirm",
                ["h"] = "explorer_close", -- close directory
                ["a"] = "explorer_add",
                ["d"] = "explorer_del",
                ["r"] = "explorer_rename",
                ["c"] = "explorer_copy",
                ["m"] = "explorer_move",
                ["o"] = "explorer_open", -- open with system application
                ["P"] = "toggle_preview",
                ["y"] = { "explorer_yank", mode = { "n", "x" } },
                ["p"] = "explorer_paste",
                ["u"] = "explorer_update",
                ["<c-c>"] = "tcd",
                ["<leader>/"] = "picker_grep",
                ["<c-t>"] = "terminal",
                ["."] = "explorer_focus",
                ["I"] = "toggle_ignored",
                ["H"] = "toggle_hidden",
                ["Z"] = "explorer_close_all",
                ["]g"] = "explorer_git_next",
                ["[g"] = "explorer_git_prev",
                ["]d"] = "explorer_diagnostic_next",
                ["[d"] = "explorer_diagnostic_prev",
                ["]w"] = "explorer_warn_next",
                ["[w"] = "explorer_warn_prev",
                ["]e"] = "explorer_error_next",
                ["[e"] = "explorer_error_prev",
              },
            },
          },
        },
      },
    },
  },
      -- stylua: ignore
      keys = {
        { "<leader>sf", function() Snacks.picker.files() end, desc = "Find Files" },
        { "<leader>sH",  LazyVim.pick("files", { hidden = true }), desc = "Find Hidden Files" },
        { "<leader>sI",  LazyVim.pick("files", { hidden = true, ignored = true }), desc = "Find Ignored Files" },
        { "<leader>fs", function() Snacks.picker.grep({ search = function() return vim.fn.input("Grep for > ") end, }) end, desc = "Grep for Input" },
        { "<leader><space>", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
        { "<leader>z", function() Snacks.lazygit() end, desc = "LazyGit" },
        { "<leader>e", false },
        { "<leader>sg", false },
        { "<leader>sG", false },
        { "<leader>lg", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
        { "<leader>lG", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
        { "<leader>lh", LazyVim.pick("live_grep", { hidden = true }), desc = "Grep hidden" },
      },
}
