-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.clipboard = {
  name = "win32yank", -- set clipboard provider
  copy = {
    ["+"] = "win32yank.exe -i --crlf", -- copy to clipboard
    ["*"] = "win32yank.exe -i --crlf", -- copy to clipboard
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf", -- paste from clipboard
    ["*"] = "win32yank.exe -o --lf", -- paste from clipboard
  },
}

vim.g.nofsync = true
vim.g.python_host_skip_check = true
vim.g.python3_host_skip_check = true
vim.g.python3_host_prog = "~/scoop/apps/python/current/python.exe"
vim.g.ruby_host_skip_check = true
vim.g.perl_host_skip_check = true
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

vim.opt.timeoutlen = 300
vim.opt.updatetime = 1000

vim.opt.conceallevel = 0
vim.loader.enable()
