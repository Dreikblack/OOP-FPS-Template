---@meta
---@class Icon:Asset
---@field size iVec2
Icon = {}

----------------------------
-- Methods
----------------------------

---@param scale number
---@param cached boolean
---@return Pixmap
function Icon:Rasterize(scale, cached) end

----------------------------
-- Functions
----------------------------

---@param path string
---@return Icon
function LoadIcon(path) end

---@param path string
---@param flags number
---@return Icon
function LoadIcon(path, flags) end

---@param stream Stream
---@return Icon
function LoadIcon(stream) end

---@param stream Stream
---@param flags number
---@return Icon
function LoadIcon(stream, flags) end

