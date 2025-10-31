local Vector2 = require("Vector2")

local v1 = Vector2:new(3, 4)
local v2 = Vector2:new(1, 2)

print("v1:", v1)
print("v2", v2)

print("v1 + v2 =", v1 + v2)
print("v1 - v2 =", v1 - v2)
print("v1 . v2 =", v1 * v2)
print("v1 * 2 =", v1 * 2)
print("2 * v2 =", 2 * v2)
