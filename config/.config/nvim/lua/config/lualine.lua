local gps = require("nvim-gps")

require("lualine").setup({
  options = {
    icons_enabled = true,
    theme = "onedark",
    section_separators = "",
    component_separators = ""
  },
  sections = {
    lualine_a = {
      "mode"
    },
    lualine_b = {
      "branch",
      "diff"
    },
    lualine_c = {
      { gps.get_location, cond = gps.is_available }
    },
    lualine_x = {
      "filetype",
      "filename"
    },
    lualine_y = {
      "diagnostics"
    },
    lualine_z = {
      "location"
    }
  }
})

