-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<A-j>", "15j", {})
vim.keymap.set("n", "<A-k>", "15k", {})
vim.keymap.set("n", "<TAB>", "<cmd>BufferLineCycleNext<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<S-TAB>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>hh", "<cmd>GrapplePopup tags<cr>", { desc = "Harpoon View" })
vim.keymap.set("n", "<leader>ha", '<cmd>lua require("grapple").toggle()<cr>', { desc = "Harpoon View" })
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Neotree" })
vim.keymap.set("n", "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Find in buffer" })

vim.api.nvim_set_keymap("v", "<leader>/", "gc", { desc = "Comment Selection" })
vim.api.nvim_set_keymap("n", "<leader>/", "Vgc", { desc = "Comment Line" })
