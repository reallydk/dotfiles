return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  main = "nvim-treesitter.configs",
  -- dependencies = {
  --   "windwp/nvim-ts-autotag",
  -- },
  opts = {
    ensure_installed = {
      "bash",
      "diff",
      "lua",
      "luadoc",
      "markdown",
      "markdown_inline",
      "query",
      "vim",
      "vimdoc",
    },

    auto_install = true,

    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },

    indent = { enable = true },

    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<C-M-Space>",
      },
    },

    -- autotag = {
    --   enable = true,
    -- },
  },
}
