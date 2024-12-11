local Line = require("statusline/line")
local Components = require("statusline/components")

local contents = {
	Components.mode,
	Components.position,
	Components.diagnostics,
	"%=", -- Align to the right
	Components.modified,
	Components.path,
	Components.permissions,
}

Line:setup(contents)
