---@meta
---@class Texture
Texture = {}

----------------------------
-- Methods
----------------------------

function Texture:BuildMipmaps() end

---@param layer number
function Texture:BuildMipmaps(layer) end

---@param pixels Pixmap
---@param miplevel number
---@param layer number
function Texture:SetPixels(pixels, miplevel, layer) end

---@param pixmap Pixmap
---@param x number
---@param y number
---@param width number
---@param height number
---@param dstx number
---@param dsty number
---@param miplevel number
---@param layer number
function Texture:SetSubPixels(pixmap, x, y, width, height, dstx, dsty, miplevel, layer) end

----------------------------
-- Functions
----------------------------

---@param type number
---@param width number
---@param height number
---@param format number
---@param mipchain table
---@param layers number
---@param flags number
---@param filter number
---@param samples number
---@return Texture
function CreateTexture(type, width, height, format, mipchain, layers, flags, filter, samples) end

---@param path string
function LoadTexture(path) end

---@param path string
---@param flags number
function LoadTexture(path, flags) end

function LoadTexture() end

---@param flags number
function LoadTexture(flags) end

