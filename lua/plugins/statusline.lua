return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.sections.lualine_b = {
        {
          "branch",
          fmt = function(branch)
            if #branch <= 32 then
              return branch
            end
            return branch:sub(1, 10) .. "…" .. branch:sub(-18)
          end,
        },
      }

      opts.sections.lualine_c[4] = {
        LazyVim.lualine.pretty_path({
          relative = "root",
          length = 0,
          modified_sign = " ●",
        }),
      }

      opts.sections.lualine_z = {}
    end,
  },
}
