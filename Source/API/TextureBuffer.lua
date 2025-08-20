---@meta
---@class TextureBuffer:Object
---@field size iVec2
---@field textures Texture[8]
TextureBuffer = {}

----------------------------
-- Methods
----------------------------

---@return number
function TextureBuffer:CountColorAttachments() end

---@param index number
---@return Texture
function TextureBuffer:GetColorAttachment(index) end

---@return Texture
function TextureBuffer:GetDepthAttachment() end

---@return iVec2
function TextureBuffer:GetSize() end

---@param texture Texture
---@param index number
---@return boolean
function TextureBuffer:SetColorAttachment(texture, index) end

---@param texture Texture
---@return boolean
function TextureBuffer:SetDepthAttachment(texture) end

----------------------------
-- Functions
----------------------------

---@param width number
---@param height number
---@param colorattachments number
---@param depthattachment boolean
---@param samples number
---@return TextureBuffer
function CreateTextureBuffer(width, height, colorattachments, depthattachment, samples) end

