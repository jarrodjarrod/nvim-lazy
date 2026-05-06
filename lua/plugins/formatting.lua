return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        prettier = {
          prepend_args = { "--ignore-path", ".prettierignore" },
        },
      },
      formatters_by_ft = {
        yaml = { "yamlfmt" },
      },
    },
    -- stylua: ignore
    keys = {
      { "<leader>lf", function() LazyVim.format({ force = true }) end, mode = { "n", "v" }, desc = "Format" },
    },
  },
}
