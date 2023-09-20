return {
  -- First disable mini.pairs
  { "echasnovski/mini.pairs", enabled = false },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({
        disable_filetype = { "TelescopePrompt" },
      })
      -- add more custom autopairs configuration such as custom rules
      local npairs = require("nvim-autopairs")
      local Rule = require("nvim-autopairs.rule")
      local cond = require("nvim-autopairs.conds")
      npairs.add_rules({
        Rule("$", "$", { "tex", "latex" })
          -- don't add a pair if the next character is %
          :with_pair(cond.not_after_regex("%%"))
          -- don't add a pair if  the previous character is xxx
          :with_pair(cond.not_before_regex("xxx", 3))
          -- don't move right when repeat character
          :with_move(cond.none())
          -- don't delete if the next character is xx
          :with_del(cond.not_after_regex("xx"))
          -- disable adding a newline when you press <cr>
          :with_cr(cond.none()),
      })
    end,
  },
}
