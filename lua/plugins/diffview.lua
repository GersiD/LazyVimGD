return {
  "sindrets/diffview.nvim",
  cmd = "DiffviewOpen",
  opts = {
    view = {
      default = {
        layout = "diff2_vertical",
        winbar_info = true,
      },
      merge_tool = {
        layout = "diff3_mixed",
      },
    },
    keymaps = {
      view = {
        { "n", "q", "<cmd>DiffviewClose<CR>", { desc = "Close Diffview" } },
      },
      file_panel = {
        { "n", "q", "<cmd>DiffviewClose<CR>", { desc = "Close Diffview" } },
      },
    },
  },
}
