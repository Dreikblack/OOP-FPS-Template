---@meta
---@class NavMesh:Object
NavMesh = {}

----------------------------
-- Methods
----------------------------

---@param maxedgelength number
function NavMesh:Build(maxedgelength) end

---@param origin Vec3
---@param destination Vec3
---@return table
function NavMesh:PlotPath(origin, destination) end

---@param |Description Parameter
function NavMesh:PlotPath(|Description) end

function NavMesh:PlotPath() end

---@param |pathstartingpoint origin
function NavMesh:PlotPath(|pathstartingpoint) end

---@param |pathendpoint destination
function NavMesh:PlotPath(|pathendpoint) end

---@return Vec3
function NavMesh:RandomPoint() end

---@param x number
---@param y number
---@param z number
function NavMesh:SetPosition(x, y, z) end

---@param position Vec3
function NavMesh:SetPosition(position) end

---@param |Description Parameter
function NavMesh:SetPosition(|Description) end

function NavMesh:SetPosition() end

---@param |navmeshpositiontoset z
---@return position,
function NavMesh:SetPosition(|navmeshpositiontoset) end

---@param pitch number
---@param yaw number
---@param roll number
function NavMesh:SetRotation(pitch, yaw, roll) end

---@param rotation Vec3
function NavMesh:SetRotation(rotation) end

---@param rotation Quat
function NavMesh:SetRotation(rotation) end

----------------------------
-- Functions
----------------------------

---@param world World
---@param height number
---@param tilesx number
---@param tilesz number
---@param tileres number
---@param voxelsize number
---@param agentradius number
---@param agentheight number
---@param stepheight number
---@param maxslope number
---@return NavMesh
function CreateNavMesh(world, height, tilesx, tilesz, tileres, voxelsize, agentradius, agentheight, stepheight, maxslope) end

