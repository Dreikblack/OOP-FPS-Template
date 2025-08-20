---@meta
---@class Bone:Object
---@field id number
---@field name string
Bone = {}

----------------------------
-- Methods
----------------------------

---@param global boolean
---@return Vec3
function Bone:GetPosition(global) end

---@param global boolean
---@return Vec3
function Bone:GetRotation(global) end

function Bone:GetScale() end

---@param x number
---@param y number
---@param z number
---@param boolean boolean
function Bone:SetPosition(x, y, z, boolean) end

---@param position Vec3
---@param global boolean
function Bone:SetPosition(position, global) end

---@param pitch number
---@param yaw number
---@param roll number
---@param boolean boolean
function Bone:SetRotation(pitch, yaw, roll, boolean) end

---@param rotation Vec3
---@param global boolean
function Bone:SetRotation(rotation, global) end

---@param rotation Quat
---@param global boolean
function Bone:SetRotation(rotation, global) end

---@param scale number
function Bone:SetScale(scale) end

---@param pitch number
---@param yaw number
---@param roll number
---@param global boolean
function Bone:Turn(pitch, yaw, roll, global) end

---@param rotation [Vec3](#vec3
---@param global boolean
function Bone:Turn(rotation, global) end

