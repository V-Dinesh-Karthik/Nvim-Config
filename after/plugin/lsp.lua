local lsp = require('lsp-zero')

lsp.preset("recommended")

lsp.set_preferences({
    sign_icons = { }
})


lsp.setup()

lsp.setup_servers({'dartls',force=true})

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

local cmp = require('cmp')
local cmp_config = lsp.defaults.cmp_config({
  window = {
    completion = cmp.config.window.bordered()
  }
})



cmp.setup(cmp_config)
