--[[

@author: Nguyen Quan ( nqzz )
@date:   2020-08-12 16:28:28
@description: Vector2 class for 2D vector operations
@version: 1.0.1

--]]

local Vector2 = {}
Vector2.__index = Vector2

function Vector2:new(x, y)
    local new_vector2 = {}
    new_vector2.x = x or 0
    new_vector2.y = y or 0
    setmetatable(new_vector2, self)
    return new_vector2
end

function Vector2.__add(a, b)
    return Vector2:new(a.x + b.x, a.y + b.y)
end

function Vector2.__sub(a, b)
    return Vector2:new(a.x - b.x, a.y - b.y)
end

function Vector2.__mul(a, b)
    if type(a) == "number" and type(b) == "table" then
        a, b = b, a
    end
    if type(b) == "number"  and type(a) == "table" then
        return Vector2:new(a.x * b, a.y * b)
    elseif type(a) == "table" and type(b) == "table" then
        return a.x * b.x + a.y * b.y
    else
        error("Invalid arguments ! Pls check again")
    end
end

function Vector2.__eq(a, b)
    return a.x == b.x and a.y == b.y
end

function Vector2.__lt(a, b)
    return (a.x^2 + a.y^2) < (b.x^2 + b.y^2)
end

function Vector2.__le(a, b)
    return (a.x^2 + a.y^2) <= (b.x^2 + b.y^2)
end

function Vector2.__gt(a, b)
    return (a.x^2 + a.y^2) > (b.x^2 + b.y^2)
end

function Vector2.__ge(a, b)
    return (a.x^2 + a.y^2) >= (b.x^2 + b.y^2)
end

function Vector2:__tostring()
    return "(" .. tostring(self.x) .. ", " .. tostring(self.y) .. ")"
end

function Vector2:__call()
    error("Unable to call Vector2 " .. tostring(self) .. "! Not a function")
end

function Vector2:__len()
    return math.sqrt(self.x * self.x + self.y * self.y)
end
-- Note: This just work if you have lua 5.2+
-- For me, im using luajit (https://luajit.org/) which is compatible
-- with lua 5.1 but not support __len metamethod for table

function Vector2:getLength()
    return math.sqrt(self.x * self.x + self.y * self.y)
end

return Vector2