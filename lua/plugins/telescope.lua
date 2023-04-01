return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>ft",
      function()
        local themes = require("plugins.themes")
        for _, theme in ipairs(themes) do
          local name = string.match(theme[1], "([^/]+)$")
          require("lazy").load({ plugins = name })
        end
        require("telescope.builtin").colorscheme({ enable_preview = true })
      end,
      desc = "Find themes",
    },
    { "<leader>/", false },
  },
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      enabled = true,
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
  cmd = "Telescope",
  opts = {
    defaults = {
      sorting_strategy = "ascending",
      layout_config = {
        horizontal = {

          prompt_position = "top",
          preview_width = 0.55,
        },
        width = 0.9,
        height = 0.9,
        preview_cutoff = 120,
      },
      mappings = {
        i = {
          ["<c-j>"] = require("telescope.actions").move_selection_next,
          ["<c-k>"] = require("telescope.actions").move_selection_previous,
        },
      },
      preview = {
        treesitter = false,
      },
      treesitter = false,
    },
    -- extensions = {
    --   fzf = {
    --     -- These are the defaults
    --     -- fuzzy = true, -- false will only do exact matching
    --     -- override_generic_sorter = true, -- override the generic sorter
    --     -- override_file_sorter = true, -- override the file sorter
    --     -- case_mode = "smart_case", -- or "ignore_case" or "respect_case"
    --     -- -- the default case_mode is "smart_case"
    --   },
    -- },
  },
}
