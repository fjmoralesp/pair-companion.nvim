local log = require("pair-companion.log")

---@class Pair
local Pair = {}

---@class Pair.Opts
---@field logs Pair.Log.Opts
local default_options = {
	logs = {
		enable = false,
		level = vim.log.levels.INFO,
	},
}

---@param opts Pair.Opts
---@return nil
function Pair.setup(opts)
	opts = vim.tbl_deep_extend("force", default_options, opts or {})
	log.configure(opts.logs)
	log:debug("Setup finished")
end

---@return table
Pair.exports = {
	vibe = function() end,
}

return Pair
