local pairs = require("nvim-autopairs")
--auto pairing "",'',``,{},[],(), etc.. using treesitter rules
pairs.setup{
    check_ts = true,
}
--auto pairing for functions and methods using cmp
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on(
    'confirm_done',
    cmp_autopairs.on_confirm_done()
)
