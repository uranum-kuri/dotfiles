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

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, "t", "<Esc><Esc>", [[<C-\><C-n>]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

