local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  [[╭─╮ ╭─┬───╮ ╭───╮ ┬   ┬─┬ ╭─┬─╮]],
  [[│ │ │ │     │   │ │   │ │ │ │ │]],
  [[│ │ │ ├──┤  │   │ ╰╮ ╭╯ │ │ │ │]],
  [[│ │ │ │     │   │  │ │  │ │ │ │]],
  [[╯ ╰─╯ ╰───╯ ╰───╯  ╰─╯  ┴─┴   ┴]],
}

dashboard.section.buttons.val = {
  dashboard.button("r", "  > Recent File", ":Telescope frecency<CR>"),
  dashboard.button("d", "  > Recent Directory", ":Telescope zoxide list<CR>"),
  dashboard.button("f", "  > Find File", ":Telescope find_files hidden=true<CR>"),
  dashboard.button("m", "  > Find Memo", ":lua require('telescope.builtin').find_files({ cwd = '~/.memo' })<CR>"),
  dashboard.button("w", "  > Find Text", ":Telescope live_grep<CR>"),
  dashboard.button("e", "  > New File", ":ene <BAR> startinsert<CR>"),
  dashboard.button("n", "  > New Memo", ":MemoNew<CR>"),
  dashboard.button("u", "  > Update Plugin", ":PackerSync<CR>:TSUpdate<CR>"),
  dashboard.button("q", "  > Quit", ":qa<CR>"),
}

dashboard.section.footer.val = function()
  local version = vim.version()
  local neovim_version = "  v" .. version.major .. "." .. version.minor .. "." .. version.patch
  local total_plugins = "  " .. #vim.tbl_keys(packer_plugins)
  return neovim_version .. "     " .. total_plugins
end
dashboard.section.footer.opts.hl = 'Comment'

dashboard.config.layout = {
  { type = "padding", val = math.max(0, math.ceil((vim.fn.winheight("$") - 20) * 0.3)) },
  dashboard.section.header,
  { type = "padding", val = 6 },
  dashboard.section.buttons,
  { type = "padding", val = 4 },
  dashboard.section.footer
}

alpha.setup(dashboard.opts)

vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
vim.cmd([[autocmd FileType alpha setlocal nonumber]])

