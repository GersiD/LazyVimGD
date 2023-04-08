require("lspconfig.server_configurations.rust_analyzer").default_config.settings = {
  ["rust-analyzer"] = {
    assist = {
      importGranularity = "module",
      importPrefix = "by_self",
    },
    check = {
      command = "clippy",
      features = "all",
    },
    cargo = {
      features = "all",
    },
    procMacro = { -- What does this do?
      enable = true,
    },
  },
}

return {
  "simrat39/rust-tools.nvim",
  ft = { "rust", "rs" },
  config = function()
    local rt = require("rust-tools")
    rt.setup({
      server = {
        on_attach = function(_, bufnr)
          vim.keymap.set("n", "K", "<cmd>RustHoverActions<cr>", { buffer = bufnr })
          vim.keymap.set("n", "<leader>la", rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
      },
      runnables = {
        use_telescope = true,
      },
      tools = {
        runnables = {
          use_telescope = true,
        },
      },
    })
  end,
}
