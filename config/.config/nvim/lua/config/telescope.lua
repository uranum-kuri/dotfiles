require("telescope").setup({
  extensions = {
    command_palette = {
      {"File",
        { "find files", ":Telescope find_files hidden=true", 1 },
        { "search word", ":Telescope live_grep", 1 },
      }
    }
  }
})

local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("n", "<Leader>ff", "<cmd>Telescope find_files hidden=true<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>fd", "<cmd>Telescope zoxide list<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>fm", "<cmd>lua require('telescope.builtin').find_files({ cwd = '~/.memo' })<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>fr", "<cmd>Telescope frecency<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>fe", "<cmd>Telescope file_browser hidden=true<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>fg", "<cmd>Telescope live_grep<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>fb", "<cmd>Telescope buffers<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>fM", "<cmd>Telescope marks<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>fk", "<cmd>Telescope keymaps<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>fp", "<cmd>Telescope neoclip<CR>", opts)

