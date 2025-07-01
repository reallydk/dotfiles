return {
  "L3MON4D3/LuaSnip",
  event = "InsertEnter",
  version = "2.*",
  build = (function()
    if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
      return
    end
    return "make install_jsregexp"
  end)(),
  dependencies = {
    {
      "rafamadriz/friendly-snippets",
      lazy = true,
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end,
    },
  },
  opts = {},
}
