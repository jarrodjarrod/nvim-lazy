return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          prepend_args = {
            "--config",
            vim.fn.stdpath("config") .. "/.markdownlint-cli2.yaml",
            "--",
          },
        },
      },
    },
  },
  {
    "iamcco/markdown-preview.nvim",
    enabled = false,
  },
  {
    "brianhuster/live-preview.nvim",
    dependencies = { "folke/snacks.nvim" },
    cmd = "LivePreview",
    ft = { "markdown", "html", "asciidoc", "svg" },
    config = function()
      require("livepreview.config").set({
        picker = "snacks.picker",
        sync_scroll = true,
      })
    end,
    keys = {
      {
        "<leader>mp",
        ft = "markdown",
        "<cmd>LivePreview start<cr>",
        desc = "Markdown Preview Start",
      },
      {
        "<leader>mP",
        ft = "markdown",
        "<cmd>LivePreview close<cr>",
        desc = "Markdown Preview Close",
      },
    },
  },
}
