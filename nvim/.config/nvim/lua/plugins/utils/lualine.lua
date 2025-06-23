return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    local lualine = require("lualine")
    lualine.setup({
      options = {
        theme = "catppuccin",
        globalstatus = true,
        icons_enabled = true,
      },
      extensions = {
        "oil",
      },
    })
  end,
}
