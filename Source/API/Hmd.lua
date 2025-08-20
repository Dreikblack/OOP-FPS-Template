---@meta
---@class Hmd:VrDevice
---@field controllers VrController[]
Hmd = {}

----------------------------
-- Methods
----------------------------

---@param position Vec3
---@param rotation Vec3
function Hmd:SetOffset(position, rotation) end

----------------------------
-- Functions
----------------------------

---@param world shared_ptr<World\>
---@param initialize boolean
---@return Hmd
function GetHmd(world, initialize) end

