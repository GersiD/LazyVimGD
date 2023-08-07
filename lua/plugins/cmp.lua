return {
  "hrsh7th/nvim-cmp",
  opts = function()
    local cmp = require("cmp")
    return {
      completion = {
        completeopt = "menu,menuone,preview,longest,noinsert",
      },
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      window = {
        completion = cmp.config.window.bordered({}),
        documentation = cmp.config.window.bordered({}),
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
      -- Only use buffer source if LSP is not available (e.g. inside a string context)
      sources = cmp.config.sources({
        { name = "nvim_lsp", priority = 100 },
        { name = "luasnip", priority = 90 },
        { name = "path" },
      }, {
        { name = "buffer" },
      }),
      formatting = {
        -- fields = { "kind", "abbr", "menu" },
        fields = { "abbr", "kind", "menu" },
        format = function(_, item)
          local icons = require("lazyvim.config").icons.kinds
          if icons[item.kind] then
            item.menu = item.kind
            item.kind = icons[item.kind]
          end
          return item
        end,
      },
      experimental = {
        ghost_text = false,
      },
    }
  end,
}
