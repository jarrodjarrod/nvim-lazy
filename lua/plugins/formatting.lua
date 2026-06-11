return {
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "yamlfmt" } },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        yaml = { "yamlfmt" },
      },
    },
  },
}
