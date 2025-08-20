---@meta
---@class Framebuffer:Object
---@field window Window
Framebuffer = {}

----------------------------
-- Methods
----------------------------

function Framebuffer:Capture() end

---@return Pixmap[]
function Framebuffer:GetCaptures() end

---@param GetSize( Vec2
function Framebuffer:GetSize(GetSize() end

----------------------------
-- Functions
----------------------------

---@param window Window
---@return Framebuffer
function CreateFramebuffer(window) end

