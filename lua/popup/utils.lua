
local utils = {}

utils.bounded = function(value, min, max)
  min = min or 0
  max = max or math.huge

  if min then value = math.max(value, min) end
  if max then value = math.min(value, max) end

  return value
end

return utils
