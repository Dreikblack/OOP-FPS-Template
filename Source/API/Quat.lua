---@meta
---@class Quat
---@field x float
---@field y float
---@field z float
---@field w float
Quat = {}

----------------------------
-- Methods
----------------------------

---@return Quat
function Quat:Inverse() end

---@return Quat
function Quat:Normalize() end

---@param dest Quat
---@param blend number
---@return Quat
function Quat:Slerp(dest, blend) end

---@param |Description Parameter
function Quat:Slerp(|Description) end

function Quat:Slerp() end

---@param |targetrotationtomatch dest
function Quat:Slerp(|targetrotationtomatch) end

---@param |travelamount blend
---@param 0and1 between
function Quat:Slerp(|travelamount, 0and1) end

---@return Vec3
function Quat:ToEuler() end

