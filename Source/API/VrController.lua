---@meta
---@class VrController:VrDevice
VrController = {}

----------------------------
-- Methods
----------------------------

---@param button number
---@return boolean
function VrController:ButtonDown(button) end

---@param button number
---@return boolean
function VrController:ButtonHit(button) end

---@param button number
---@return boolean
function VrController:ButtonTouched(button) end

---@param axis number
---@return Vec2
function VrController:GetAxis(axis) end

