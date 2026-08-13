return {
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "postgres-language-server" } },
  },
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters = opts.formatters or {}
      opts.formatters.sqlfluff = {
        args = { "format", "--dialect=postgres", "--stdin-filename", "$FILENAME", "-" },
        exit_codes = { 0, 1 },
      }
    end,
  },
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters = opts.linters or {}
      opts.linters.sqlfluff = opts.linters.sqlfluff or {}
      opts.linters.sqlfluff.args = {
        "lint",
        "--format=json",
        "--dialect=postgres",
        "-",
      }
    end,
  },
}
