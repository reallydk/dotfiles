-- clear highlights
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- copying
vim.keymap.set({ "v", "n" }, "<C-y>", '"+y')

vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "diagnostic list" })
