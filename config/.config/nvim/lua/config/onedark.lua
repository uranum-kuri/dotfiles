require("onedark").setup({
  style = "darker",
  transparent = "true",
  toggle_style_key = "onets"
})

require("onedark").load()

vim.api.nvim_del_keymap("n", "onets")

