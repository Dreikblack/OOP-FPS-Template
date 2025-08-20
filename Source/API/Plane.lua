---@meta
---@class Plane
---@field x number
---@field d number
Plane = {}

----------------------------
-- Methods
----------------------------

---@param x number
---@param y number
---@param z number
---@return number
function Plane:DistanceToPoint(x, y, z) end

---@param point Vec3
---@return number
function Plane:DistanceToPoint(point) end

---@param p0 Vec3
---@param p1 Vec3
---@param result Vec3
---@param twosided boolean
---@param infinite boolean
---@return boolean
function Plane:IntersectsLine(p0, p1, result, twosided, infinite) end

