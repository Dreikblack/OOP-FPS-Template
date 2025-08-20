---@meta
---@class Sprite
Sprite = {}

----------------------------
-- Methods
----------------------------

---@param mode number
function Sprite:SetViewMode(mode) end

----------------------------
-- Functions
----------------------------

---@param world World
---@param width number
---@param height number
---@return Sprite
function CreateSprite(world, width, height) end

---@param world World
---@param font Font
---@param text string
---@param size number
---@param textalignment number
---@return Sprite
function CreateSprite(world, font, text, size, textalignment) end

---@param world World
---@param path WString
---@return Sprite
function LoadSprite(world, path) end

---@param world World
---@param path WString
---@param flags number
---@return Sprite
function LoadSprite(world, path, flags) end

---@param world World
---@param stream Stream
---@return Sprite
function LoadSprite(world, stream) end

---@param world World
---@param stream Stream
---@param flags number
---@return Sprite
function LoadSprite(world, stream, flags) end

