---@meta
---@class Interface:Object
---@field background Widget
---@field font Font
---@field scale number
Interface = {}

----------------------------
-- Methods
----------------------------

---@param path string
---@param flags number
---@return boolean
function Interface:LoadColorScheme(path, flags) end

---@param event Event
function Interface:ProcessEvent(event) end

---@param renderlayers number
function Interface:SetRenderLayers(renderlayers) end

---@param scale number
function Interface:SetScale(scale) end

---@param scale [iVec2](iVec2
function Interface:SetSize(scale) end

----------------------------
-- Functions
----------------------------

---@param window Window
---@return Interface
function CreateInterface(window) end

---@param camera Camera
---@param font Font
---@param size iVec2
---@return Interface
function CreateInterface(camera, font, size) end

