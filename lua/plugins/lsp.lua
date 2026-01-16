return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Enable this to enable the builtin LSP inlay hints on Neovim.
      -- Be aware that you also will need to properly configure your LSP server to
      -- provide the inlay hints.
      inlay_hints = {
        enabled = false,
        exclude = { "go", "typescript" }, -- filetypes for which you don't want to enable inlay hints
      },
      servers = {
        ["*"] = {
              -- stylua: ignore
            keys = {
              -- change a keymap
              { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition", },
              { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition", },
              { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration", },
              { "grr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References", },
              { "gri", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation", },
              { "grt", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto Type Definition", },
              -- disable a keymap
              { "gr", false },
            },
        },
        gopls = {
          settings = {
            gopls = {
              formatting = {
                ["local"] = "github.com/anzx/fabric-entitlements",
              },
            },
          },
        },
      },
    },
  },
}
