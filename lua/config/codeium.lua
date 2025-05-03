local codeium_ok, codeium = pcall(require, "codeium")

if not codeium_ok then
	return
end

codeium.setup({
    enable_cmp_source = true,
    enable = true,
})

