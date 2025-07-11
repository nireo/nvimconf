-- Setup the statusline with custom content (components, strings).

local line = require("statusline/line")
local components = require("statusline/components")

local contents = {
	components.mode,
	components.path,
	"%#StatusOther#%q", -- Quickfix indicator
	"%=", -- Align to the right
	components.position,
	components.lsp,
}

line.setup(contents)
