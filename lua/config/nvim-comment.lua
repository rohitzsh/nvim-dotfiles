local is_ok, ncomment = pcall(require, "nvim_comment")
if not is_ok then
	return
end

ncomment.setup({
	create_mappings = false
})

vim.keymap.set({"n", "v"}, "<C-/>", ":CommentToggle<cr>")
