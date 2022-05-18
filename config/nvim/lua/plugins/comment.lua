require("Comment").setup{
	-- LHS of operator pending mapping in NORMAL & VISUAL mode
	opleader = {
		--line comment map
		line = "gc",
		--block comment map
		block = "gb",
	},
	mappings = {

    -- operator-pending mapping
    -- Includes:
    --  `gcc`               -> line-comment  the current line
    --  `gcb`               -> block-comment the current line
    --  `gc[count]{motion}` -> line-comment  the region contained in {motion}
    --  `gb[count]{motion}` -> block-comment the region contained in {motion}
		basic = true,

		-- extra mapping
    -- Includes `gco`, `gcO`, `gcA`
    extra = true,
	}
}
