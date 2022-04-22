vim.cmd[[packadd packer.nvim]]

return require("packer").startup({
  function(use)
    -- plugin manager
    use({ "wbthomason/packer.nvim", opt = true })

    -- library
    use({ "nvim-lua/plenary.nvim" })
    use({ "nvim-lua/popup.nvim" })
    use({ "tami5/sqlite.lua" })

    -- notify
    use({
      "rcarriga/nvim-notify",
      event = "VimEnter"
    })

    -- icons
    use({
      "kyazdani42/nvim-web-devicons",
      config = function()
        require("config.web-devicons")
      end
    })

    -- colorschema
    use({
      "navarasu/onedark.nvim",
      config = function()
        require("config.onedark")
      end
    })

    -- status line
    use({
      "nvim-lualine/lualine.nvim",
      after = { "nvim-gps" },
      config = function()
        require("config.lualine")
      end
    })
    use({
      "SmiteshP/nvim-gps",
      after = "nvim-treesitter",
      config = function()
        require("config.nvim-gps")
      end
    })

    -- buffer line
    use({
      "akinsho/bufferline.nvim",
      after = { "onedark.nvim" },
      config = function()
        require("bufferline").setup({})
      end
    })

    -- scrollbar
    use({
      "petertriho/nvim-scrollbar",
      after = { "onedark.nvim", "nvim-hlslens" },
      config = function()
        require("scrollbar").setup({})
      end
    })

    -- dashboard
    use({
      "goolord/alpha-nvim",
      config = function()
        require("config.alpha")
      end
    })

    -- treesitter
    use({
      "nvim-treesitter/nvim-treesitter",
      event = "VimEnter",
      config = function()
        require("config.treesitter")
      end
    })
    use({
      "JoosepAlviste/nvim-ts-context-commentstring",
      after = { "nvim-treesitter" }
    })
    use({
      "p00f/nvim-ts-rainbow",
      after = { "nvim-treesitter" }
    })
    use({
      "haringsrob/nvim_context_vt",
      after = { "nvim-treesitter" },
      config = function()
        require("config.nvim-context-vt")
      end
    })
    use({
      "m-demare/hlargs.nvim",
      after = { "nvim-treesitter" },
      config = function()
        require("hlargs").setup({})
      end
    })

    -- language server protocol
    use({
      "neovim/nvim-lspconfig",
      after = { "cmp-nvim-lsp", "vim-illuminate" },
      config = function()
        require("config.nvim-lspconfig")
      end
    })
    use({
      "tami5/lspsaga.nvim",
      after = { "nvim-lspconfig" },
      config = function()
        require("lspsaga").setup({})
      end
    })
    use({
      "folke/lsp-colors.nvim",
      after = { "nvim-lspconfig" },
      config = function()
        require("lsp-colors").setup({})
      end
    })
    use({
      "folke/trouble.nvim",
      after = { "nvim-lspconfig" },
      config = function()
        require("trouble").setup({})
      end
    })
    use({
      "j-hui/fidget.nvim",
      after = { "nvim-lspconfig" },
      config = function()
        require("fidget").setup({})
      end
    })

    -- auto complete
    use({
      "hrsh7th/nvim-cmp",
      after = { "lspkind.nvim", "LuaSnip" },
      config = function()
        require("config.nvim-cmp")
      end
    })
    use({
      "hrsh7th/cmp-nvim-lsp",
      after = { "nvim-cmp" }
    })
    use({
      "hrsh7th/cmp-nvim-lsp-document-symbol",
      after = { "nvim-cmp" }
    })
    use({
      "hrsh7th/cmp-nvim-lsp-signature-help",
      after = { "nvim-cmp" }
    })
    use({
      "hrsh7th/cmp-path",
      after = { "nvim-cmp" }
    })
    use({
      "hrsh7th/cmp-cmdline",
      after = { "nvim-cmp" }
    })
    use({
      "hrsh7th/cmp-buffer",
      after = { "nvim-cmp" }
    })
    use({
      "saadparwaiz1/cmp_luasnip",
      after = { "nvim-cmp" }
    })
    use({
      "ray-x/cmp-treesitter",
      after = { "nvim-cmp" }
    })
    use({
      "onsails/lspkind.nvim",
      event = "VimEnter"
    })

    -- fuzzy finder
    use({
      "nvim-telescope/telescope.nvim",
      event = "VimEnter",
      config = function()
        require("config.telescope")
      end
    })
    use({
      "nvim-telescope/telescope-file-browser.nvim",
      after = { "telescope.nvim" },
      config = function()
        require("telescope").load_extension("file_browser")
      end
    })
    use({
      "nvim-telescope/telescope-frecency.nvim",
      after = { "telescope.nvim" },
      config = function()
        require("telescope").load_extension("frecency")
      end
    })
    use({
      "LinArcX/telescope-command-palette.nvim",
      after = { "telescope.nvim" },
      config = function()
        require("telescope").load_extension("command_palette")
      end
    })
    use({
      "jvgrootveld/telescope-zoxide",
      after = { "telescope.nvim" },
      config = function()
        require("telescope").load_extension("zoxide")
      end
    })

    -- terminal
    use({
      "akinsho/toggleterm.nvim",
      event = "VimEnter",
      config = function()
        require("config.toggleterm")
      end
    })

    -- snippet
    use({
      "L3MON4D3/LuaSnip",
      after = { "friendly-snippets" },
      config = function()
        require("config.luasnip")
      end
    })
    use({
      "rafamadriz/friendly-snippets",
      event = "VimEnter"
    })

    -- comment
    use({
      "numToStr/Comment.nvim",
      event = "VimEnter",
      config = function()
        require("config.comment")
      end
    })

    -- highlight
    use({
      "RRethy/vim-illuminate",
      event = "VimEnter"
    })

    -- search
    use({
      "kevinhwang91/nvim-hlslens",
      event = "VimEnter",
      config = function()
        require("hlslens").setup({})
      end
    })

    -- number
    use({
      "myusuf3/numbers.vim",
      event = "VimEnter",
      config = function()
        vim.cmd[[source ~/.config/nvim/config/numbers.vim]]
      end
    })

    -- editorconfig
    use({
      "editorconfig/editorconfig-vim",
      event = "VimEnter"
    })

    -- window
    use({
      "tkmpypy/chowcho.nvim",
      event = "VimEnter",
      config = function()
        require("config.chowcho")
      end
    })

    -- marks
    use({
      "chentau/marks.nvim",
      event = "VimEnter",
      config = function()
        require("marks").setup({})
      end
    })

    -- memo
    use({
      "glidenote/memolist.vim",
      cmd = { "MemoNew", "MemoList", "MemoGrep" },
      config = function()
        vim.cmd[[source ~/.config/nvim/config/memo.vim]]
      end
    })

    -- undo
    use({
      "mbbill/undotree",
      event = "VimEnter",
      config = function()
        vim.cmd[[source ~/.config/nvim/config/undotree.vim]]
      end
    })

    -- commands
    use({
      "jghauser/mkdir.nvim",
      event = "VimEnter"
    })

    -- clipboard
    use({
      "AckslD/nvim-neoclip.lua",
      after = { "telescope.nvim" },
      config = function()
        require("config.neoclip")
      end
    })

    -- brackets
    use({
      "andymass/vim-matchup",
      after = { "nvim-treesitter" }
    })
    use({
      "windwp/nvim-autopairs",
      event = "VimEnter",
      config = function()
        require("nvim-autopairs").setup({})
      end
    })

    -- git
    use({
      "lewis6991/gitsigns.nvim",
      event = "VimEnter",
      config = function()
        require("gitsigns").setup({})
      end
    })
  end
})

