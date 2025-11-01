-- Ye u can take a look at this demo file to see how to use the Vector2 library

local Vector2 = require("Vector2")


-- Normal table
local t1 = {3, 4}
local t2 = {1, 2}
print("t1: " .. tostring(t1)) -- address of the table
print("t2: " .. tostring(t2)) -- address of the table
print("t1 + t2" .. tostring(t1 + t2)) -- This will raise an error
print("t1 - t2" .. tostring(t1 - t2)) -- This will raise an error
print("t1 . t2" .. tostring(t1 * t2)) -- This will raise an error
print("t1 * 2" .. tostring(t1 * 2))   -- This will raise an error
print("2 * t2" .. tostring(2 * t2))   -- This will raise an error


-- Vector2 instances
local v1 = Vector2:new(3, 4)
local v2 = Vector2:new(1, 2)

print("v1:", v1)
print("v2", v2)

print("v1 + v2 =", v1 + v2)
print("v1 - v2 =", v1 - v2)
print("v1 . v2 =", v1 * v2)
print("v1 * 2 =", v1 * 2)
print("2 * v2 =", 2 * v2)

v1() -- This will raise an error
