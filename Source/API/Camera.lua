---@meta
---@class Camera:Entity
Camera = {}

----------------------------
-- Methods
----------------------------

---@param effect PostEffect
---@return number
function Camera:AddPostEffect(effect) end

function Camera:ClearPostEffects() end

---@return number
function Camera:GetFov() end

---@return number
function Camera:GetProjectionMode() end

---@return Vec2
function Camera:GetRange() end

---@return number
function Camera:GetZoom() end

---@param closest boolean
---@return PickInfo
function Camera:Pick(radius, closest, object, extra) end

---@param closest boolean
---@return PickInfo
function Camera:Pick(radius, closest, object, extra) end

---@param point Vec3
---@param framebuffer Framebuffer
---@return Vec3
function Camera:Project(point, framebuffer) end

function Camera:Render() end

---@param red number
---@param green number
---@param blue number
---@param alpha number
function Camera:SetClearColor(red, green, blue, alpha) end

---@param color Vec4
function Camera:SetClearColor(color) end

---@param brightness number
function Camera:SetClearColor(brightness) end

---@param mode number
function Camera:SetClearMode(mode) end

---@param mode boolean
function Camera:SetDepthPrepass(mode) end

---@param fov number
---@return void
function Camera:SetFov(fov) end

---@param mode number
function Camera:SetMsaa(mode) end

---@param order number
function Camera:SetOrder(order) end

---@param projectionmode number
function Camera:SetProjectionMode(projectionmode) end

---@param near number
---@param far number
function Camera:SetRange(near, far) end

---@param range [Vec2](Vec2
function Camera:SetRange(range) end

---@param mode boolean
function Camera:SetRealtime(mode) end

---@param TextureBuffer texturebuffer:
---@return void
function Camera:SetRenderTarget(TextureBuffer) end

---@param mode boolean
function Camera:SetSweptCulling(mode) end

---@param polygonsize number
function Camera:SetTessellation(polygonsize) end

---@param zoom number
function Camera:SetZoom(zoom) end

---@param coord Vec3
---@param framebuffer Framebuffer
---@return Vec3
function Camera:UnProject(coord, framebuffer) end

----------------------------
-- Functions
----------------------------

---@param world World
---@return Camera
function CreateCamera(world) end

---@param world World
---@param projectionmode number
---@return Camera
function CreateCamera(world, projectionmode) end

