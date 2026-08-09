---@class Pair.Log
local Log = {}

---@class Pair.Log.Opts
---@field enable boolean
---@field level vim.log.levels
local options = {}

---@param opts Pair.Log.Opts
---@return nil
function Log.configure(opts)
	local log_system = require("codecompanion.utils.log")
	if opts.enable then
		log_system.set_level(log_system, opts.level)
	end
	Log.handler = setmetatable({}, {
		__index = function(_, method)
			return function(_, msg, ...)
				if opts.enable then
					log_system[method](log_system, "[Pair] " .. msg, ...)
				end
			end
		end,
	})
end

return setmetatable(Log, {
	__index = function(_, key)
		if key == "configure" then
			return Log.configure
		end
		return Log.handler[key]
	end,
})
