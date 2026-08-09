local pair_companion = require("pair-companion")

---@class CodeCompanion.Pair
---@field setup fun(opts: table)
---@field exports? table
local Pair = {}

---@param opts Pair.Opts
---@return nil
function Pair.setup(opts)
	pair_companion.setup(opts)
end

Pair.exports = pair_companion.exports

return Pair
