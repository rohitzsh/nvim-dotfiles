local is_ok, gitsigns = pcall(require, 'gitsigns')
if not is_ok then
    return
end

require('gitsigns').setup()

