return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.sections.lualine_z = {} -- Remove the clock by emptying the lualine_z section
      return opts
    end,
  },
}
