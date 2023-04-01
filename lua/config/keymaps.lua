-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("n", "<A-j>", "15j", {})
vim.api.nvim_set_keymap("n", "<A-k>", "15k", {})
vim.api.nvim_set_keymap("n", "<TAB>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
vim.api.nvim_set_keymap("n", "<S-TAB>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
vim.api.nvim_set_keymap(
  "n",
  "<C-f>",
  "<cmd>Telescope current_buffer_fuzzy_find<cr>",
  { desc = "Current_buffer_fuzzy_find" }
)
vim.api.nvim_set_keymap("n", "<leader>hh", "<cmd>GrapplePopup tags<cr>", { desc = "Harpoon View" })
vim.api.nvim_set_keymap("n", "<leader>ha", '<cmd>lua require("grapple").toggle()<cr>', { desc = "Harpoon View" })
vim.api.nvim_set_keymap("v", "<leader>/", "gc", { desc = "Comment Selection" })
vim.api.nvim_set_keymap("n", "<leader>/", "Vgc", { desc = "Comment Line" })
vim.api.nvim_set_keymap("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Find Keymaps" })
vim.api.nvim_set_keymap(
  "n",
  "<leader>r",
  '<cmd>lua require("telescope.builtin").commands(require("telescope.themes").get_ivy()) <cr>',
  { desc = "Find Commands" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>fv",
  '<cmd>lua require("telescope.builtin").vim_options()<cr>',
  { desc = "Find vim opts" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>ff",
  '<cmd>lua require("telescope.builtin").find_files({ hidden = true, no_ignore = true })<cr>',
  { desc = "Find all files" }
)
vim.api.nvim_set_keymap("n", "<leader>fH", "<cmd>Telescope highlights<cr>", { desc = "Find Highlights" })
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Find Help" })
vim.api.nvim_set_keymap(
  "n",
  "<leader>fw",
  '<cmd>lua require("telescope.builtin").live_grep({additional_args = function(args)return vim.list_extend(args, { "--hidden", "--no-ignore" })end,})<cr>',
  { desc = "Find words" }
)
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find Buffers" })
