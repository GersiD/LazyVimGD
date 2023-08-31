vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.cpp", "*.hpp" },
  desc = "Setup C++ LSP",
  callback = function()
    vim.keymap.set("n", "<leader>`", function()
      -- Save the current buffer
      vim.cmd("w")
      require("config.utils.terminals").run(
        "make uncross && .\\uncross ./graphs/graph-complex.txt",
        { direction = "horizontal" }
      )
    end, { desc = "Computer Graphics" })
  end,
  once = true,
})

return {
  "neovim/nvim-lspconfig",
  opts = {
    setup = {
      clangd = function(_, opts)
        opts.capabilities.offsetEncoding = { "utf-16" }
      end,
    },
  },
}
