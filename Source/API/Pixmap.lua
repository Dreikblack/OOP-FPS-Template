---@meta
---@class Pixmap:Asset
---@field format number
---@field size iVec2
---@field blocks iVec2
---@field pixels Buffer
---@field blocksize number
Pixmap = {}

----------------------------
-- Methods
----------------------------

---@param x number
---@param y number
---@param width number
---@param height number
---@param dest Pixmap
---@param destx number
---@param desty number
---@param destwidth number
---@param destheight number
---@param filter number
---@return boolean
function Pixmap:Blit(x, y, width, height, dest, destx, desty, destwidth, destheight, filter) end

---@param format number
---@return Pixmap
function Pixmap:Convert(format) end

---@param intx const
---@param inty const
---@param intwidth const
---@param intheight const
---@param dst Pixmap
---@param intdx const
---@param intdy const
---@return bool
function Pixmap:CopyRect(intx, inty, intwidth, intheight, dst, intdx, intdy) end

---@param x number
---@param y number
---@param width number
---@param height number
---@return Pixmap
function Pixmap:Extract(x, y, width, height) end

---@param color [Vec4](Vec4
function Pixmap:Fill(color) end

---@param r number
---@param g number
---@param b number
---@param a number
function Pixmap:Fill(r, g, b, a) end

---@param color number
function Pixmap:Fill(color) end

---@param x number
---@param y number
---@return number
function Pixmap:ReadPixel(x, y) end

---@param width number
---@param height number
---@return Pixmap
function Pixmap:Resize(width, height) end

---@param u number
---@param v number
---@return Vec4
function Pixmap:Sample(u, v) end

---@param coords Vec2
---@return Vec4
function Pixmap:Sample(coords) end

---@param coords iVec2
---@return Vec4
function Pixmap:Sample(coords) end

---@param x number
---@param y number
---@param color number
function Pixmap:WritePixel(x, y, color) end

---@param x number
---@param y number
---@param color Vec4
function Pixmap:WritePixel(x, y, color) end

----------------------------
-- Functions
----------------------------

---@param width number
---@param height number
---@param format number
---@param pixeldata Buffer
---@return Pixmap
function CreatePixmap(width, height, format, pixeldata) end

---@param path string
---@return Pixmap
function LoadPixmap(path) end

---@param path string
---@param flags number
---@return Pixmap
function LoadPixmap(path, flags) end

---@return Pixmap
function LoadPixmap() end

---@param flags number
---@return Pixmap
function LoadPixmap(flags) end

