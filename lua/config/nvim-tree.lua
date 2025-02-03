local is_ok, ntree = pcall(require, "nvim-tree")
if not is_ok then
	return
end

ntree.setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

local api = require "nvim-tree.api"

local function opts(desc)
   return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
 end

 -- default mappings
-- api.config.mappings.default_on_attach(bufnr)

-- custom mappings
vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
vim.keymap.set('n', '<C-b>', api.tree.toggle, opts('Toggle NvimTree'))

