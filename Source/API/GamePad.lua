---@meta
---@class GamePad:Object
GamePad = {}

----------------------------
-- Methods
----------------------------

---@param button number
---@return boolean
function GamePad:ButtonDown(button) end

---@param button number
---@return boolean
function GamePad:ButtonHit(button) end

function GamePad:Flush() end

---@param axis number
---@return Vec2
function GamePad:GetAxisPosition(axis) end

---@return boolean
function GamePad:GetConnected() end

---@param left number
---@param right number
function GamePad:Rumble(left, right) end

----------------------------
-- Functions
----------------------------

---@return GamePad[]
function GetGamePads() end

