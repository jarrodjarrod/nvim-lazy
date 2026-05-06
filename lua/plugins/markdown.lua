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
    keys = {
      { "<leader>cp", false },
      {
        "<leader>mp",
        ft = "markdown",
        "<cmd>MarkdownPreviewToggle<cr>",
        desc = "Markdown Preview",
      },
    },
  },
}
