local term = require("toggleterm")

term.setup{
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    autochdir = true,
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings= true,
    persist_size = false,
    direction = 'float',
    auto_scroll = true,
    float_opts = {
        border = 'curved',
        width  = 99,
        height = 26,
        winblend = 3,
    },
}
