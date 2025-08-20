---@meta
---@class Display:Object
---@field graphicsmodes iVec3[]
---@field position iVec2
---@field scale number
---@field size iVec2
Display = {}

----------------------------
-- Methods
----------------------------

---@return iVec4
function Display:ClientArea() end

---@return iVec2
function Display:GetPosition() end

---@return iVec2
function Display:GetScale() end

---@return iVec2
function Display:GetSize() end

----------------------------
-- Functions
----------------------------

---@return Display[]
function GetDisplays() end

