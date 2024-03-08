return {
  {
    "tpope/vim-fugitive",
    -- lazy = "VeryLazy",
    cmd = {
      "Git",
      "Gwrite",
      "Gread",
      "GVdiffsplit",
    },
    ---@type LazyKeysSpec[]
    keys = {
      { "<leader>gg", "<cmd>Git<cr>", desc = "Git (fugitive)" },
    },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        -- follow_current_file = { enabled = false },
        filtered_items = {
          always_show = {
            ".env.local",
            ".env.development.local",
            ".env.production.local",
          },
          hide_dotfiles = false,
        },
      },
    },
  },

  {
    "telescope.nvim",
    opts = {
      defaults = {
        hidden = true,
        vimgrep_arguments = {
          -- default
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",

          -- same as find command, without following symlinks and single files
          -- "--files",
          -- "--follow",
          "--hidden",
          "--iglob",
          "!.git",
        },
      },
      pickers = {
        find_files = {
          -- I want to be able to fuzzy find dotfiles like
          -- - `.env` (tracked)
          -- - `.swcrc`
          -- - `.changeset/what-ever.md`
          -- - `.github/workflow/main.yml`
          --
          -- this still doesn't work for ignored .env*.local files though
          find_command = { "rg", "--files", "--follow", "--hidden", "--iglob", "!.git" },
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,
          case_mode = "smart_case",
          override_file_sorter = true,
          override_generic_sorter = true,
        },
      },
    },
    keys = {
      {
        "<leader>fd",
        "<cmd>Telescope find_files no_ignore=true hidden=true search_file=\\.env<cr>",
        desc = "Find dot env files",
      },
    },
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },

  {
    "folke/flash.nvim",
    ---@type LazyKeysSpec[]
    keys = {
      { "S", false },
      {
        "S",
        mode = { "n", "o" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
      -- this is the default
      -- { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" }
    },
  },

  {
    "vimwiki/vimwiki",
    cmd = {
      "VimwikiDiaryIndex",
      "VimwikiMakeDiaryNote",
    },
    init = function()
      vim.g.vimwiki_list = {
        { path = "~/vimwiki/", syntax = "markdown", ext = ".md" },
      }
    end,
  },
}
