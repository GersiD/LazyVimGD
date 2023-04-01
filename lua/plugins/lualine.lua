return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    table.insert(opts.sections.lualine_x, { -- Lsp server name .
      function()
        local msg = ""
        local clients = vim.lsp.get_active_clients()
        if next(clients) == nil then
          return "No Active Lsp"
        end
        for ind, client in ipairs(clients) do
          if ind == 1 then
            msg = client.name
          else
            msg = msg .. ", " .. client.name
          end
        end
        return msg
      end,
      icon = " LSP:",
      color = { fg = "#ffffff", gui = "bold" },
    })
  end,
}
