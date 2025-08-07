-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {
  {
    "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    -- config = function()
    --   vim.g.zenbones_darken_comments = 45
    --   vim.cmd.colorscheme("zenbones")
    -- end,
  },
  {
    "lalitmee/cobalt2.nvim",
    event = { "ColorSchemePre" }, -- if you want to lazy load
    dependencies = { "tjdevries/colorbuddy.nvim", tag = "v1.0.0" },
    init = function()
      require("colorbuddy").colorscheme("cobalt2")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavor = "mocha",
      transparent_background = true,
      custom_highlights = function(colors)
        return {
          LineNr = { fg = colors.peach },
          CursorLineNr = { fg = colors.teal, bg = colors.overlay0, style = { "bold" } },
          Folded = { bg = colors.surface2 },

          Conceal = { fg = colors.yellow },
          Identifier = { style = { "bold" } },
          Include = { fg = colors.green },
          Function = { fg = colors.red },
          PreProc = { fg = colors.maroon, style = { "bold" } },
          Special = { fg = colors.green, style = { "bold" } },
          Statement = { fg = colors.sapphire, style = { "bold" } },

          texTitleArg = { fg = colors.text, style = { "bold" } },
          texEnvArgName = { fg = colors.red, style = { "bold" } },
          texEnvOpt = { fg = colors.text, style = { "bold" } },
          texMathEnvArgName = { fg = colors.green, style = { "bold" } },
          texCmd = { fg = colors.blue, style = { "bold" } },
          texCmdPart = { fg = colors.red, style = { "bold" } },
          texPartArgTitle = { fg = colors.yellow, style = { "bold" } },

          Normal = { fg = "#dde6ff" }, -- brighter normal text
        }
      end,
    },
  },
  { "ellisonleao/gruvbox.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "neobones",
    },
  },
}
