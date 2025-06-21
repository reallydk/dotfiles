return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
      default_integrations = true,
      integrations = {
        blink_cmp = {
          style = "solid",
        },
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        alpha = true,
        telescope = {
          enabled = true,
          -- style = "classic",
        },
      },
    })
    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
