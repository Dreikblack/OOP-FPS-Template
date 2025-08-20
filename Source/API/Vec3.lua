---@meta
---@class Vec3
---@field x number
---@field y number
---@field z number
Vec3 = {}

----------------------------
-- Methods
----------------------------

---@param v Vec3
---@return Vec3
function Vec3:Cross(v) end

---@param position Vec3
---@return Vec3
function Vec3:DistanceToPoint(position) end

---@param v Vec3
---@return number
function Vec3:Dot(v) end

---@return Vec3
function Vec3:Hsl() end

---@return Vec3
function Vec3:Inverse() end

---@return number
function Vec3:Length() end

---@param normal Vec3
---@return Vec3
function Vec3:Reflect(normal) end

---@return Vec3
function Vec3:Rgb() end

