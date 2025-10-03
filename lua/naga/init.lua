local palette = {
	bg = "#040404",
	bg_green = "#041a04",
	fg = "#0ac30a",
	fg_medium = "#089e08",
	fg_dark = "#078807",
	yellow = "#eec900",
	gold = "#eead0e",
	cyan = "#00bfb0",
	string = "#b3ee3a",
	purple = "#cc59d2",
	orange = "#ff9000",
	comment = "#707370",
	comment_light = "#909590",
	comment_dark = "#353535",
	docstring = "#698b22",
	grey = "#aabaaa",
	dark_blue = "#01018a",
	alt_green = "#60c410",
	orange_red = "#ff4500",
	red = "#ff1500",
	whitespace_fg = "#555f55",
	amaranth = "#e52b50",
}

local groups = {
	Normal = { fg = palette.fg, bg = palette.bg },
	NormalFloat = { fg = palette.fg, bg = palette.bg },
	Comment = { fg = palette.comment },
	Constant = { fg = palette.purple },
	String = { fg = palette.string },
	Character = { fg = palette.yellow },
	Number = { fg = palette.orange },
	Boolean = { fg = palette.orange },
	Keyword = { fg = palette.yellow },
	Function = { fg = palette.cyan },
	Identifier = { fg = palette.alt_green },
	Operator = { fg = palette.cyan },
	Type = { fg = palette.alt_green },
	PreProc = { fg = palette.purple },
	TypeDef = { fg = palette.orange },
	["@string"] = { fg = palette.string },
}

local M = {}
M.setup = function()
	for group, setting in pairs(groups) do
		vim.api.nvim_set_hl(0, group, setting)
	end
end

return M
