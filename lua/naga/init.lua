local bg = "#040404"
local bg_green = "#041a04"
local fg = "#0ac30a"
local fg_medium = "#089e08"
local fg_dark = "#078807"
local yellow = "#eec900"
local gold = "#eead0e"
local cyan = "#00bfb0"
local string = "#b3ee3a"
local purple = "#cc59d2"
local orange = "#ff9000"
local comment = "#707370"
local docstring = "#698b22"
local grey = "#aabaaa"
local dark_blue = "#01018a"
local alt_green = "#60c410"
local orange_red = "#ff4500"
local red = "#ff1500"
local whitespace_fg = "#555f55"
local amaranth = "#e52b50"

local groups = {
  Normal = { fg = fg, bg = bg },
  NormalFloat = { fg = fg, bg = bg },
  Comment = { fg = comment },
  SpecialComment = { fg = comment, italic = true },
  Constant = { fg = purple },
  String = { fg = string },
  Character = { fg = yellow },
  Number = { fg = orange },
  Boolean = { fg = orange },
  Keyword = { fg = yellow },
  Function = { fg = cyan },
  Identifier = { fg = alt_green },
  Operator = { fg = cyan },
  Type = { fg = alt_green },
  PreProc = { fg = purple },
  TypeDef = { fg = orange },
  Error = { fg = red },
  Statement = { fg = gold },
  Conditional = { fg = grey },
  Todo = { fg = fg_dark, underline = true, bold = true },
  Cursor = { reverse = true },
  StatusLine = { bg = bg_green, fg = fg_dark },
  StatusLineNC = { fg = string },
  StatusLineTerm = { fg = string, bg = bg },
  Title = { fg = fg, bold = true },

  ["@variable"] = { link = "Identifier" },
  ["@variable.builtin"] = { link = "Identifier" },
  ["@variable.parameter"] = { link = "Identifier" },
  ["@variable.parameter.builtin"] = { link = "Identifier" },
  ["@variable.member"] = { link = "Identifier" },
  ["@constant"] = { link = "Constant" },
  ["@constant.builtin"] = { link = "Constant" },
  ["@constant.macro"] = { link = "Constant" },
  ["@module"] = {},
  ["@module.builtin"] = {},
  ["@label"] = {},
  ["@string"] = { link = "String" },
  ["@string.documentation"] = { link = "SpecialComment" },
  ["@string.regexp"] = { link = "String" },
  ["@string.escape"] = { link = "String" },
  ["@string.special"] = { link = "String" },
  ["@string.special.symbol"] = { link = "String" },
  ["@string.special.path"] = { link = "String", italic = true },
  ["@string.special.url"] = { link = "String", underline = true },
  ["@character"] = { link = "Character" },
  ["@character.special"] = { link = "Character" },
  ["@boolean"] = { link = "Boolean" },
  ["@number"] = { link = "Number" },
  ["@number.float"] = { link = "Number" },
  ["@type"] = { link = "Type" },
  ["@type.builtin"] = { link = "Type" },
  ["@type.definition"] = { link = "TypeDef" },
  ["@attribute"] = {},
  ["@attribute.builtin"] = {},
  ["@property"] = {},
  ["@function"] = { link = "Function" },
  ["@function.builtin"] = { link = "Function" },
  ["@function.call"] = { link = "Function" },
  ["@function.macro"] = { link = "PreProc" },
  ["@function.method"] = { link = "Function" },
  ["@function.method.call"] = { link = "Function" },
  ["@constructor"] = { link = "Function" },
  ["@operator"] = {},
  ["@keyword"] = { link = "Keyword" },
  ["@keyword.coroutine"] = { link = "Keyword" },
  ["@keyword.function"] = { link = "Keyword" },
  ["@keyword.operator"] = { link = "Keyword" },
  ["@keyword.import"] = { link = "Keyword" },
  ["@keyword.type"] = { link = "Keyword" },
  ["@keyword.modifier"] = { link = "Keyword" },
  ["@keyword.repeat"] = { link = "Keyword" },
  ["@keyword.return"] = { link = "Keyword" },
  ["@keyword.debug"] = { link = "Keyword" },
  ["@keyword.exception"] = { link = "Keyword" },
  ["@keyword.conditional"] = { link = "Keyword" },
  ["@keyword.conditional.ternary"] = { link = "Keyword" },
  ["@keyword.directive"] = { link = "Keyword" },
  ["@keyword.directive.define"] = { link = "Keyword" },
  ["@punctuation.delimiter"] = {},
  ["@punctuation.bracket"] = {},
  ["@punctuation.special"] = {},
  ["@comment"] = { link = "Comment" },
  ["@comment.documentation"] = { link = "SpecialComment" },
  ["@comment.error"] = { link = "Comment" },
  ["@comment.warning"] = { link = "Comment" },
  ["@comment.todo"] = { link = "Comment" },
  ["@comment.note"] = { link = "Comment" },
  ["@markup.strong"] = { fg = fg, bold = true },
  ["@markup.italic"] = { fg = fg, italic = true },
  ["@markup.strikethrough"] = { fg = fg, strikethrough = true },
  ["@markup.underline"] = { fg = fg, underline = true },
  ["@markup.heading"] = {},
  ["@markup.heading.1"] = { fg = fg_medium, bold = true, underline = true },
  ["@markup.heading.2"] = { fg = gold },
  ["@markup.heading.3"] = { fg = cyan },
  ["@markup.heading.4"] = { fg = orange },
  ["@markup.heading.5"] = { fg = purple },
  ["@markup.heading.6"] = { fg = string },
  ["@markup.quote"] = {},
  ["@markup.math"] = {},
  ["@markup.link"] = {},
  ["@markup.link.label"] = {},
  ["@markup.link.url"] = {},
  ["@markup.raw"] = {},
  ["@markup.raw.block"] = {},
  ["@markup.list"] = {},
  ["@markup.list.checked"] = {},
  ["@markup.list.unchecked"] = {},
  ["@diff.plus"] = {},
  ["@diff.minus"] = {},
  ["@diff.delta"] = {},
  ["@tag"] = {},
  ["@tag.builtin"] = {},
  ["@tag.attribute"] = {},
  ["@tag.delimiter"] = {},
}

local M = {}
M.setup = function()
  for group, setting in pairs(groups) do
    vim.api.nvim_set_hl(0, group, setting)
  end
end

return M
