local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
local bottom = Terminal:new({ cmd = "bottom", hidden = true })
local gdu = Terminal:new({ cmd = "gdu", hidden = true })
local float_term = Terminal:new({ cmd = "zsh", hidden = true })
return {
  lazygit = function()
    lazygit:toggle()
  end,
  bottom = function()
    bottom:toggle()
  end,
  gdu = function()
    gdu:toggle()
  end,
  float = function()
    float_term:toggle()
  end,
}
