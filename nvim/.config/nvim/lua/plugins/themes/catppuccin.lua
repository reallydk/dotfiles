return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
      default_integrations = true,
      -- color_overrides = {
      --   mocha = {
      --     base = "#131420",
      --     mantle = "#131420",
      --   },
      -- },
      integrations = {
        blink_cmp = {
          -- style = "solid",
          style = "bordered",
        },
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        alpha = true,
        telescope = {
          enabled = true,
        },
        which_key = true,
      },
    })
    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
