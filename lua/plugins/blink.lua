return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<C-s>"] = {
          function(cmp)
            cmp.show({ providers = { "snippets" } })
            return true
          end,
        },
      },
    },
  },
}
