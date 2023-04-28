vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)

vim.api.nvim_set_keymap("n","<leader>e", ":NvimTreeToggle<cr>", {silent = true, noremap=true})


vim.keymap.set("n","<leader>t",":ToggleTerm<cr>",{silent=true,noremap=true})
