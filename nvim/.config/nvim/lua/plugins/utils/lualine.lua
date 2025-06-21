return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")
    lualine.setup({
      options = {
        theme = "catppuccin",
        globalstatus = true,
        icons_enabled = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { "filename" },
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            -- color = { fg = colors.gold },
          },
          "encoding",
          "fileformat",
          "filetype",
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      extensions = {
        "oil",
      },
    })
  end,
}
