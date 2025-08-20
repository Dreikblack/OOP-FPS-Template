---@meta
---@class Model:Entity
---@field lods Lod[]
---@field skeleton Skeleton[]
Model = {}

----------------------------
-- Methods
----------------------------

function Model:AddLod() end

---@param number ->
---@return function
function Model:AddLod(number) end

function Model:AddLod() end

---@return Mesh
function Model:AddMesh() end

---@param type number
---@return Mesh
function Model:AddMesh(type) end

---@param type number
---@param lod number
---@return Mesh
function Model:AddMesh(type, lod) end

---@param mesh Mesh
---@return Mesh
function Model:AddMesh(mesh) end

---@param mesh Mesh
---@param lod number
---@return Mesh
function Model:AddMesh(mesh, lod) end

---@param sequence number
function Model:Animate(sequence) end

---@param sequence number
---@param speed number
function Model:Animate(sequence, speed) end

---@param sequence number
---@param speed number
---@param blendtime number
function Model:Animate(sequence, speed, blendtime) end

---@param sequence number
---@param speed number
---@param blendtime number
---@param mode number
function Model:Animate(sequence, speed, blendtime, mode) end

---@param sequence number
---@param speed number
---@param blendtime number
---@param mode number
---@param frame number
function Model:Animate(sequence, speed, blendtime, mode, frame) end

---@param sequence number
---@param speed number
---@param blendtime number
---@param mode number
---@param frame number
---@param track number
function Model:Animate(sequence, speed, blendtime, mode, frame, track) end

---@param name string
function Model:Animate(name) end

---@param name string
---@param speed number
function Model:Animate(name, speed) end

---@param name string
---@param speed number
---@param blendtime number
function Model:Animate(name, speed, blendtime) end

---@param name string
---@param speed number
---@param blendtime number
---@param mode number
function Model:Animate(name, speed, blendtime, mode) end

---@param name string
---@param speed number
---@param blendtime number
---@param mode number
---@param frame number
function Model:Animate(name, speed, blendtime, mode, frame) end

---@param name string
---@param speed number
---@param blendtime number
---@param mode number
---@param frame number
---@param track number
function Model:Animate(name, speed, blendtime, mode, frame, track) end

function Model:Clear() end

function Model:Collapse() end

---@param path string
---@return boolean
function Model:Save(path) end

---@param path string
---@param flags number
---@return boolean
function Model:Save(path, flags) end

---@param skeleton Skeleton
function Model:SetSkeleton(skeleton) end

function Model:UpdateNormals() end

----------------------------
-- Functions
----------------------------

---@param world World
---@return Model
function CreateBox(world) end

---@param world World
---@param size number
---@return Model
function CreateBox(world, size) end

---@param world World
---@param width number
---@param height number
---@param depth number
---@return Model
function CreateBox(world, width, height, depth) end

---@param world World
---@param width number
---@param height number
---@param depth number
---@param xsegs number
---@param ysegs number
---@param zsegs number
---@return Model
function CreateBox(world, width, height, depth, xsegs, ysegs, zsegs) end

---@param world World
---@param width number
---@param height number
---@param depth number
---@param xsegs number
---@param ysegs number
---@param zsegs number
---@param type number
---@return Model
function CreateBox(world, width, height, depth, xsegs, ysegs, zsegs, type) end

---@param world World
---@return Model
function CreateCone(world) end

---@param world World
---@param radius number
---@param height number
---@return Model
function CreateCone(world, radius, height) end

---@param world World
---@param radius number
---@param height number
---@param sides number
---@return Model
function CreateCone(world, radius, height, sides) end

---@param world World
---@param radius number
---@param height number
---@param sides number
---@param heightsegs number
---@param capsegs number
---@return Model
function CreateCone(world, radius, height, sides, heightsegs, capsegs) end

---@param world World
---@param radius number
---@param segments number
---@param type number
---@return Model
function CreateCubeSphere(world, radius, segments, type) end

---@param world World
---@return Model
function CreateCylinder(world) end

---@param world World
---@param radius number
---@param height number
---@return Model
function CreateCylinder(world, radius, height) end

---@param world World
---@param radius number
---@param height number
---@param sides number
---@return Model
function CreateCylinder(world, radius, height, sides) end

---@param world World
---@param radius number
---@param height number
---@param sides number
---@param heightsegs number
---@param capsegs number
---@return Model
function CreateCylinder(world, radius, height, sides, heightsegs, capsegs) end

---@param world World
---@return Model
function CreateModel(world) end

---@param world World
---@return Model
function CreatePlane(world) end

---@param world World
---@param width number
---@param height number
---@return Model
function CreatePlane(world, width, height) end

---@param world World
---@param width number
---@param height number
---@param xsegs number
---@param ysegs number
---@return Model
function CreatePlane(world, width, height, xsegs, ysegs) end

---@param world World
---@param width number
---@param height number
---@param xsegs number
---@param ysegs number
---@param type number
---@return Model
function CreatePlane(world, width, height, xsegs, ysegs, type) end

---@param world World
---@return Model
function CreateSphere(world) end

---@param world World
---@param radius number
---@return Model
function CreateSphere(world, radius) end

---@param world World
---@param radius number
---@param sides number
---@return Model
function CreateSphere(world, radius, sides) end

---@param path string
---@return Model
function LoadModel(path) end

---@param path string
---@param flags number
---@return Model
function LoadModel(path, flags) end

---@param stream Stream
---@return Model
function LoadModel(stream) end

---@param stream Stream
---@param flags number
---@return Model
function LoadModel(stream, flags) end

