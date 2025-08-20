---@meta
---@class Collider:Asset

----------------------------
-- Functions
----------------------------

---@param size Vec3
---@param offset Vec3
---@param rotation Vec3
---@return Collider
function CreateBoxCollider(size, offset, rotation) end

---@param width number
---@param height number
---@param depth number
---@param x number
---@param y number
---@param z number
---@param pitch number
---@param yaw number
---@param roll number
---@return Collider
function CreateBoxCollider(width, height, depth, x, y, z, pitch, yaw, roll) end

---@param radius number
---@param height number
---@param offset Vec3
---@param rotation Vec3
---@return Collider
function CreateCapsuleCollider(radius, height, offset, rotation) end

---@param radius number
---@param height number
---@param x number
---@param y number
---@param z number
---@param pitch number
---@param yaw number
---@param roll number
---@return Collider
function CreateCapsuleCollider(radius, height, x, y, z, pitch, yaw, roll) end

---@param |Description Parameter
function CreateCapsuleCollider(|Description) end

function CreateCapsuleCollider() end

---@param |offsetofshape z
---@return offset,
function CreateCapsuleCollider(|offsetofshape) end

---@param |rotationofshape roll
---@return rotation,
function CreateCapsuleCollider(|rotationofshape) end

---@return Collider
function CreateCompoundCollider() end

---@param |Description Parameter
function CreateCompoundCollider(|Description) end

function CreateCompoundCollider() end

---@param |anarrayofcollisionobjectstobecombinedintothecreatedshape subshapes
function CreateCompoundCollider(|anarrayofcollisionobjectstobecombinedintothecreatedshape) end

---@param radius number
---@param height number
---@param offset Vec3
---@param rotation Vec3
---@return Collider
function CreateConeCollider(radius, height, offset, rotation) end

---@param radius number
---@param height number
---@param x number
---@param y number
---@param z number
---@param pitch number
---@param yaw number
---@param roll number
---@return Collider
function CreateConeCollider(radius, height, x, y, z, pitch, yaw, roll) end

---@param geometry Mesh
---@return Collider
function CreateConvexHullCollider(geometry) end

---@param geometry Model
---@return Collider
function CreateConvexHullCollider(geometry) end

---@param points table
---@return Collider
function CreateConvexHullCollider(points) end

---@param radius number
---@param height number
---@param offset Vec3
---@param rotation Vec3
---@return Collider
function CreateCylinderCollider(radius, height, offset, rotation) end

---@param radius number
---@param height number
---@param x number
---@param y number
---@param z number
---@param pitch number
---@param yaw number
---@param roll number
---@return Collider
function CreateCylinderCollider(radius, height, x, y, z, pitch, yaw, roll) end

---@param |Description Parameter
function CreateCylinderCollider(|Description) end

function CreateCylinderCollider() end

---@param |offsetofshape z
---@return offset,
function CreateCylinderCollider(|offsetofshape) end

---@param |rotationofshape roll
---@return rotation,
function CreateCylinderCollider(|rotationofshape) end

---@param geometry Mesh
---@param optimize boolean
---@return Collider
function CreateMeshCollider(geometry, optimize) end

---@param geometry Mesh
---@param optimize boolean
---@return Collider
function CreateMeshCollider(geometry, optimize) end

---@param radius number
---@param x number
---@param y number
---@param z number
---@return Collider
function CreateSphereCollider(radius, x, y, z) end

---@param radius number
---@param offset Vec3
---@return Collider
function CreateSphereCollider(radius, offset) end

