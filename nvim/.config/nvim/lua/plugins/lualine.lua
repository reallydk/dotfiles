return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = "",
        section_separators = "",
        globalstatus = true,
      },
      extensions = { "oil" },
    })
  end,
}
