-- Ye u can take a look at this demo file to see how to use the Vector2 library

local Vector2 = require("Vector2")

print("Output will be redirected to out.txt file")
print("Version: ", _VERSION)

io.input("inp.txt")
io.output("out.txt")

-- Vector2
local v1 = Vector2:new(3, 4)
local v2 = Vector2:new(1, 2)

io.write("v1: ", tostring(v1), "\n")
io.write("v2: ", tostring(v2), "\n")

io.write("v1 + v2 = ", tostring(v1 + v2), "\n")
io.write("v1 - v2 = ", tostring(v1 - v2), "\n")
io.write("v1 . v2 = ", tostring(v1 * v2), "\n")
io.write("v1 * 2 = ", tostring(v1 * 2), "\n")
io.write("2 * v2 = ", tostring(2 * v2), "\n")

-- v1() -- This will raise an error

io.write("v1 == v2 ", tostring(v1 == v2), "\n")
io.write("v1 < v2 ", tostring(v1 < v2), "\n")
io.write("v1 <= v2 ", tostring(v1 <= v2), "\n")
io.write("v1 > v2 ", tostring(v1 > v2), "\n")
io.write("v1 >= v2 ", tostring(v1 >= v2), "\n")
io.write("|v1| ", tostring(v1:getLength()), "\n")
io.write("|v2| ", tostring(v2:getLength()), "\n")