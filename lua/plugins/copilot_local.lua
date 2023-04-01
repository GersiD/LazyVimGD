return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  init = function()
    require("copilot").setup({
      suggestion = {
        auto_trigger = true,
        keymap = { accept = "<Right>" },
      },
    })
  end,
}
