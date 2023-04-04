return {
  "simrat39/rust-tools.nvim",
  ft = { "rust", "rs" },
  config = function()
    local rt = require("rust-tools")
    rt.setup({
      server = {
        on_attach = function(_, bufnr)
          vim.keymap.set("n", "K", "<cmd>RustHoverActions<cr>", { buffer = bufnr })
          vim.keymap.set("n", "<leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
        checkOnSave = {
          command = "clippy",
        },
      },
      tools = {
        runnables = {
          use_telescope = true,
        },
      },
    })
  end,
}
