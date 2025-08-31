return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true, -- show hidden/dotfiles
        ignored = true, -- show git-ignored files/folders
        sources = {
          files = {
            hidden = true, -- specifically for file sources in pickers
          },
        },
      },
    },
  },
}
