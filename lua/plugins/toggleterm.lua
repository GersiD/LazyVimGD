return {
  "akinsho/toggleterm.nvim",
  keys = {
    { "<leader>tf", "<cmd>ToggleTerm<cr>", desc = "Float Term" },
    { "<leader>tb" },
    { "<leader>td" },
  },
  cmd = "ToggleTerm",
  opts = {
    direction = "float",
    float_opts = {
      border = "curved",
      highlights = { border = "Normal", background = "Normal" },
      width = 1000,
      height = 100,
    },
    size = 10,
    shading_factor = 2,
    -- start_in_insert = true,
    shell = "pwsh",
  },
}
