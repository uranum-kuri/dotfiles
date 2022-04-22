require("chowcho").setup({
  icon_enabled = true,
  border_style = "rounded"
})

vim.api.nvim_set_keymap("n", "<Leader><Leader>", "<cmd>Chowcho<CR>", { noremap = true, silent = true })

