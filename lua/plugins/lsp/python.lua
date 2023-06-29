vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = "*.py",
  callback = function()
    require("null-ls").register({
      -- require("null-ls").builtins.formatting.black,
      -- require("null-ls").builtins.formatting.autopep8,
      -- require("null-ls").builtins.formatting.yapf,
    })
  end,
})

--TODO: - add debug adapter for python
return {}
