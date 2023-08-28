vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.jl",
  desc = "Setup Julia LSP",
  callback = function()
    -- vim.keymap.set("n", "<leader>`", function()
    --   require("config.utils.terminals").run("gradle test")
    -- end, { desc = "Gradle Test" })
    -- require("null-ls").register({})
    require("lspconfig")["julials"].setup({
      settings = {
        julia = {
          format = {
            indent = 2,
          },
        },
      },
    })
  end,
})

return {}
