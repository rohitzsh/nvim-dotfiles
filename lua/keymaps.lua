local opts = {
	noremap = true, -- non-recursive
	silent = true, -- do not show message
}

-- Map Alt+Tab to switch to the next buffer
vim.keymap.set("n", "<A-Tab>", ":bn<CR>", opts)

-- Map Alt+Shift+Tab to switch to the previous buffer
vim.keymap.set("n", "<A-S-Tab>", ":bp<CR>", opts)

-- Map Ctrl+Q to close a buffer
vim.keymap.set("n", "<C-q>", ":bd<CR>", opts)

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- For nvim-tree.lua
-- default leader key: \
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

vim.keymap.set("n", "<C-s>", ":%! jq .<cr>", opts)
