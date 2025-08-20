---@meta
---@class Mat4
---@field i [Vec4](Vec4)
---@field j [Vec4](Vec4)
---@field k [Vec4](Vec4)
---@field t [Vec4](Vec4)
Mat4 = {}

----------------------------
-- Methods
----------------------------

---@return number
function Mat4:Determinant() end

---@return Quat
function Mat4:GetQuaternion() end

---@return Vec3
function Mat4:GetRotation() end

---@return Vec3
function Mat4:GetScale() end

---@return Vec3
function Mat4:GetTranslation() end

---@return Mat4
function Mat4:Inverse() end

---@return Mat4
function Mat4:Normalize() end

---@return Mat4
function Mat4:Transpose() end

