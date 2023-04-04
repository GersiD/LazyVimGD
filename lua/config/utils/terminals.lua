local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
local bottom = Terminal:new({ cmd = "bottom", hidden = true })
local gdu = Terminal:new({ cmd = "gdu", hidden = true })
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
}
