	-- Smart motion
	-- Usage: Enter a 2-character search pattern then press a label character to
	--        pick your target.
	--        Initiate the sesarch with `s`(forward) or `S`(backward)
return	{
    "ggandor/leap.nvim",
    config = function()
        -- See `:h leap-custom-mappings` for more details
        require("leap").create_default_mappings()
    end,
}

