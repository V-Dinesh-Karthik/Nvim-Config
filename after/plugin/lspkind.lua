local cmp = require("cmp")
local lspkind = require("lspkind")
cmp.setup {
  formatting = {
    format = lspkind.cmp_format({
      mode = 'text_symbol',
      maxwidth = 70,
      ellipsis_char = '...',

    })
  }
}
