---@meta
---@class VrDevice:Object
---@field model Model
VrDevice = {}

----------------------------
-- Methods
----------------------------

---@return boolean
function VrDevice:Connected() end

---@return Mat4
function VrDevice:GetMatrix() end

---@return Vec3
function VrDevice:GetPosition() end

---@return Quat
function VrDevice:GetQuaternion() end

---@return Vec3
function VrDevice:GetRotation() end

