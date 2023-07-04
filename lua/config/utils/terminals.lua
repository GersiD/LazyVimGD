local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })
local bottom = Terminal:new({ cmd = "bottom", hidden = true, direction = "float" })
local gdu = Terminal:new({ cmd = "gdu", hidden = true })
local float_term = Terminal:new({ cmd = "zsh", hidden = true })
local python_term = Terminal:new({ cmd = "python3", hidden = true })

if jit.os == "Windows" then
  float_term = Terminal:new({ cmd = "pwsh", hidden = true })
  python_term = Terminal:new({ cmd = "python", hidden = true })
end
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
  python = function()
    python_term:toggle()
  end,
}
