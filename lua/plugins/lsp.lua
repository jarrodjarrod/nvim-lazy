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
          keys = {
            -- change a keymap
            {
              "gd",
              function()
                Snacks.picker.lsp_definitions()
              end,
              desc = "Goto Definition",
              has = "definition",
            },
            {
              "gD",
              function()
                Snacks.picker.lsp_declarations()
              end,
              desc = "Goto Declaration",
              has = "declaration",
            },
            {
              "grr",
              function()
                Snacks.picker.lsp_references()
              end,
              nowait = true,
              desc = "References",
              has = "references",
            },
            {
              "gri",
              function()
                Snacks.picker.lsp_implementations()
              end,
              desc = "Goto Implementation",
              has = "implementation",
            },
            {
              "grt",
              function()
                Snacks.picker.lsp_type_definitions()
              end,
              desc = "Goto Type Definition",
              has = "typeDefinition",
            },
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
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim", "LazyVim", "Snacks" },
              },
            },
          },
        },
        tsgo = {
          -- nvim-lspconfig aliases tsgo to tsc, whose default command prefers a
          -- project-local `tsc`. Force the standalone Mason tsgo binary instead.
          cmd = { vim.fn.stdpath("data") .. "/mason/bin/tsgo", "--lsp", "--stdio" },
        },
        postgres_lsp = {},
      },
    },
  },
}
