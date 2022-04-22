require("toggleterm").setup({
  direction = "float"
})

local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("n", "<Leader>t", "<cmd>ToggleTerm<CR>", opts)

local lazygit = require("toggleterm.terminal").Terminal:new({
  cmd = "lazygit",
  direction = "float",
})

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", opts)

