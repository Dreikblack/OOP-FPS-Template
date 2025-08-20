---@meta
---@class Font
Font = {}

----------------------------
-- Methods
----------------------------

---@return number
function Font:GetHeight() end

---@param text string
---@param size number
---@return number
function Font:GetTextWidth(text, size) end

----------------------------
-- Functions
----------------------------

---@param path [string]([WString.md](https://www.lua.org/manual/5.4/manual.html#6.4
---@return Font
function LoadFont(path) end

---@param path [string]([WString.md](https://www.lua.org/manual/5.4/manual.html#6.4
---@param flags number
---@return Font
function LoadFont(path, flags) end

---@param stream Stream
---@return Font
function LoadFont(stream) end

---@param stream Stream
---@param flags number
---@return Font
function LoadFont(stream, flags) end

