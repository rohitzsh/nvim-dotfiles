-- Make surrounding easier
-- ------------------------------------------------------------------
-- Old text                    Command         New text
-- ------------------------------------------------------------------
-- surr*ound_words             gziw)           (surround_words)
-- *make strings               gz$"            "make strings"
-- [delete ar*ound me!]        gzd]            delete around me!
-- remove <b>HTML t*ags</b>    gzdt            remove HTML tags
-- 'change quot*es'            gzc'"           "change quotes"
-- delete(functi*on calls)     gzcf            function calls
-- ------------------------------------------------------------------
return	{
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    -- You can use the VeryLazy event for things that can
    -- load later and are not important for the initial UI
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- To solve the conflicts with leap.nvim
            -- See: https://github.com/ggandor/leap.nvim/discussions/59
            keymaps = {
                insert = "<C-g>z",
                insert_line = "gC-ggZ",
                normal = "gz",
                normal_cur = "gZ",
                normal_line = "gzgz",
                normal_cur_line = "gZgZ",
                visual = "gz",
                visual_line = "gZ",
                delete = "gzd",
                change = "gzc",
            },
        })
    end,
}
