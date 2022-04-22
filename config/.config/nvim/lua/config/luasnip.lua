local luasnip = require("luasnip")

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
  local col = vim.fn.col '.' - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match '%s' ~= nil
end

_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t '<C-n>'
  elseif luasnip.expand_or_jumpable() then
    return t '<Plug>luasnip-expand-or-jump'
  elseif check_back_space() then
    return t '<Tab>'
  else
    return ""
  end
end

_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t '<C-p>'
  elseif luasnip.jumpable(-1) then
    return t '<Plug>luasnip-jump-prev'
  else
    return t '<S-Tab>'
  end
end

vim.api.nvim_set_keymap("i", '<Tab>', 'v:lua.tab_complete()', { expr = true, noremap = false })
vim.api.nvim_set_keymap("i", '<S-Tab>', 'v:lua.s_tab_complete()', { expr = true, noremap = false })
vim.api.nvim_set_keymap("s", '<Tab>', 'v:lua.tab_complete()', { expr = true, noremap = false })
vim.api.nvim_set_keymap("s", '<S-Tab>', 'v:lua.s_tab_complete()', { expr = true, noremap = false })

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/luasnip-snippets" })
require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/.config/nvim/vscode-snippets" } })

