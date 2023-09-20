return {
  "goolord/alpha-nvim",
  opts = function(_, dashboard)
    local button =
      dashboard.button("g", " " .. " Git 🖋️", ":lua require('config.utils.terminals').lazygit() <CR>")
    button.opts.hl = "AlphaButtons"
    button.opts.hl_shortcut = "AlphaShortcut"
    table.remove(dashboard.section.buttons.val, 4)
    table.insert(dashboard.section.buttons.val, 4, button)
  end,
}
