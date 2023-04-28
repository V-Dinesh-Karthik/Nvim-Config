local hydra = require("hydra")
local tree_api = require("nvim-tree.api")

local nvim_tree_hydra = nil
local nt_au_group = vim.api.nvim_create_augroup("NvimTreeHydraAu",{clear = true})

local function spawn_nvim_tree_hydra()
    nvim_tree_hydra = hydra({
        name = "NvimTree",
        config = {
            color = "pink",
            invoke_on_body = true,
            buffer = 0,
            hint = {
                position = "bottom",
                border = "rounded",
            },
        },
        mode = "n",
        body = "H",
        heads = {
            {"n",tree_api.fs.create, {silent=true}},
            {"r",tree_api.fs.rename,{silent=true}},
            {"d",tree_api.fs.remove,{silent=true}},
            {"h",tree_api.tree.toggle_hidden_filter,{silent=true}},
            {"c",tree_api.fs.copy.absolute_path,{silent=true}},
            {"y",tree_api.fs.copy.node,{silent=true}},
            {"p",tree_api.fs.paste,{exit=true,silent=true}},
            {"x",tree_api.fs.cut,{exit=true,silent=true}},
            {"/",tree_api.live_filter.start,{silent=true}},
            {"?",tree_api.tree.toggle_help,{silent=true}},
        },
    })
    nvim_tree_hydra:activate()
end

vim.api.nvim_create_autocmd({"BufEnter"},{
    pattern = "*",
    callback = function (opts)
        if vim.bo[opts.buf].filetype == "NvimTree" then
            spawn_nvim_tree_hydra()
        else
            if nvim_tree_hydra then
                nvim_tree_hydra:exit()
            end
        end
    end,
    group = nt_au_group,
})
