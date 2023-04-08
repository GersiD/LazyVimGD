vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = "*.py",
  callback = function()
    require("null-ls").register({
      require("null-ls").builtins.formatting.black,
    })
  end
})

--TODO: - add debug adapter for python
return {}
