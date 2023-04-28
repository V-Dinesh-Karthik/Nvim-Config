require("bufferline").setup{
    options = {
        mode= "buffers",
        numbers = "none",
        themable = true;
        indicator = { 
            icon='| ',
            style = 'icon',
        },
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 30,
        diagnostics = "nvim_lsp",
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = false,
            }
        },
        color_icons = true;
        separator_style = "thick",
    },
}

--go to next and prev buffers.
vim.api.nvim_set_keymap("n","<S-l>",":BufferLineCycleNext<cr>",{silent=true,noremap=true})
vim.api.nvim_set_keymap("n","<S-h>", ":BufferLineCyclePrev<cr>",{silent=true,noremap=true})

-- move buffers.
vim.api.nvim_set_keymap("n","<c-l>", ":BufferLineMoveNext<cr>", {silent = true, noremap=true})
vim.api.nvim_set_keymap("n","<c-h>",":BufferLineMovePrev<cr>",{silent=true,noremap=true})

--toggle pinning of buffers
vim.api.nvim_set_keymap("n","<S-p>",":BufferLineTogglePin<cr>",{silent=true,noremap=true})

