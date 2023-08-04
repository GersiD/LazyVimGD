local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", direction = "float" })
local bottom = Terminal:new({ cmd = "btop", direction = "float" })
local gdu = Terminal:new({ cmd = "gdu" })
local float_term = Terminal:new({ cmd = "zsh" })
local python_term = Terminal:new({ cmd = "python3" })

if jit.os == "Windows" then
  float_term = Terminal:new({ cmd = "pwsh" })
  python_term = Terminal:new({ cmd = "python" })
end
local list = {
  lazygit = lazygit,
  bottom = bottom,
  gdu = gdu,
  float = float_term,
  python = python_term,
}
local close_all = function()
  for _, term in pairs(list) do
    term:close()
  end
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
  close_all = close_all,
}
