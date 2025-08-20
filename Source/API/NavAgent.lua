---@meta
---@class NavAgent:Object
NavAgent = {}

----------------------------
-- Methods
----------------------------

---@param destination Vec3
---@return boolean
function NavAgent:Navigate(destination) end

---@param x number
---@param y number
---@param z number
---@return boolean
function NavAgent:Navigate(x, y, z) end

---@param acceleration number
function NavAgent:SetMaxAcceleration(acceleration) end

---@param speed number
function NavAgent:SetMaxSpeed(speed) end

---@param |Description Parameter
function NavAgent:SetMaxSpeed(|Description) end

function NavAgent:SetMaxSpeed() end

---@param |themaximumvelocity speed
---@param meterspersecond in
function NavAgent:SetMaxSpeed(|themaximumvelocity, meterspersecond) end

---@param x number
---@param y number
---@param z number
function NavAgent:SetPosition(x, y, z) end

---@param position Vec3
function NavAgent:SetPosition(position) end

---@param angle number
function NavAgent:SetRotation(angle) end

---@param |Description Parameter
function NavAgent:SetRotation(|Description) end

function NavAgent:SetRotation() end

---@param |rotationtoset angle
---@param degrees in
function NavAgent:SetRotation(|rotationtoset, degrees) end

function NavAgent:Stop() end

----------------------------
-- Functions
----------------------------

---@param navmesh NavMesh
---@return NavAgent
function CreateNavAgent(navmesh) end

---@param navmesh NavMesh
---@param radius number
---@param height number
---@return NavAgent
function CreateNavAgent(navmesh, radius, height) end

