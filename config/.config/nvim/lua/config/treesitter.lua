require("nvim-treesitter.configs").setup({
  ensure_installed = "all",
  ignore_install = {
    "phpdoc"
  },
  highlight = {
    enable = true
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false
  },
  rainbow = {
    enable = true
  },
  matchup = {
    enable = true,
    disable_virtual_text = true
  }
})

