return {
  "echasnovski/mini.nvim",
  config = function()
    require("mini.ai").setup({ n_lines = 500 })
    require("mini.pairs").setup()
    require("mini.comment").setup()
    require("mini.move").setup({
      mappings = {
        left = "<C-h>",
        right = "<C-l>",
        down = "<C-j>",
        up = "<C-k>",
        line_left = "<C-h>",
        line_right = "<C-l>",
        line_down = "<C-j>",
        line_up = "<C-k>",
      },
      options = {
        reindent_linewise = true,
      },
    })
    require("mini.indentscope").setup({
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "help", "alpha", "dashboard", "oil", "lazy", "Mason" },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      }),
    })
    require("mini.notify").setup({
      content = {
        format = nil,
        sort = nil,
      },
      lsp_progress = {
        enable = false,
      },
      window = {
        config = {},
        -- max_width_share = 0.382,
        wknblend = 25,
      },
    })
    vim.notify = require("mini.notify").make_notify()
  end,
}
