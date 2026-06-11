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
    -- stylua: ignore
    keys = {
      { "<leader>lf", function() LazyVim.format({ force = true }) end, mode = { "n", "v" }, desc = "Format" },
    },
  },
}
