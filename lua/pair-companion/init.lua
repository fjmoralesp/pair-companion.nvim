---@class Pair
local Pair = {}

---@return table
Pair.exports = {
	vibe = function() end,
}

---@param opts table
---@return nil
function Pair.setup(opts)
	print("Pair.setup")
end

return Pair
