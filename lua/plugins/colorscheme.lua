return {
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = true,
    opts = {
      options = {
        styles = {
          comments = "italic",
          conditionals = "bold",
          functions = "bold",
          keywords = "bold,italic",
          types = "italic",
          variables = "NONE",
        },
        inverse = {
          match_paren = false,
          search = false,
          visual = false,
        },
        transparent = true,
      },
      groups = {
        all = {
          CursorLineNr = { fg = "palette.accent.fg", style = "bold" },
          FloatBorder = { fg = "palette.border.default", bg = "bg0" },
          NormalFloat = { fg = "fg1", bg = "bg0" },
          PmenuSel = { fg = "fg1", bg = "sel1", style = "bold" },
          Search = { bg = "sel2", style = "bold" },
          IncSearch = {
            fg = "palette.fg.on_emphasis",
            bg = "palette.severe.emphasis",
            style = "bold",
          },
          WinSeparator = { fg = "palette.border.default" },
        },
      },
    },
  },
  { "rose-pine/neovim", name = "rose-pine", lazy = true },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("config.theme").setup()
      end,
    },
  },
}
