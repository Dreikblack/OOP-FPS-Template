---@meta
---@class Entity:Object
---@field extra Object
---@field kids Entity[]
---@field matrix Mat4
---@field name string
---@field omega Vec3
---@field parent Entity
---@field position Vec3
---@field properties table
---@field quaternion Quat
---@field rotation Vec3
---@field scale Vec3
---@field speakers Speaker[]
---@field tags string[]
---@field velocity Vec3
Entity = {}

----------------------------
-- Methods
----------------------------

---@param t table
---@param start boolean
---@return Component
function Entity:AddComponent(t, start) end

---@param path string
---@param start boolean
---@return Component
function Entity:AddComponent(path, start) end

---@param x number
---@param y number
---@param z number
function Entity:AddForce(x, y, z) end

---@param x number
---@param y number
---@param z number
---@param global boolean
function Entity:AddForce(x, y, z, global) end

---@param force Vec3
function Entity:AddForce(force) end

---@param force Vec3
---@param global boolean
function Entity:AddForce(force, global) end

---@param fx number
---@param fy number
---@param fz number
---@param x number
---@param y number
---@param z number
---@return void
function Entity:AddPointForce(fx, fy, fz, x, y, z) end

---@param fx number
---@param fy number
---@param fz number
---@param x number
---@param y number
---@param z number
---@param global boolean
---@return void
function Entity:AddPointForce(fx, fy, fz, x, y, z, global) end

---@param force Vec3
---@param position Vec3
---@return void
function Entity:AddPointForce(force, position) end

---@param force Vec3
---@param position Vec3
---@param global boolean
---@return void
function Entity:AddPointForce(force, position, global) end

---@param tag string
function Entity:AddTag(tag) end

---@param x number
---@param y number
---@param z number
---@return void
function Entity:AddTorque(x, y, z) end

---@param x number
---@param y number
---@param z number
---@param global boolean
---@return void
function Entity:AddTorque(x, y, z, global) end

---@param torque Vec3
---@return void
function Entity:AddTorque(torque) end

---@param torque Vec3
---@param global boolean
---@return void
function Entity:AddTorque(torque, global) end

---@param x number
---@param y number
---@param z number
function Entity:AlignToVector(x, y, z) end

---@param x number
---@param y number
---@param z number
---@param axis number
function Entity:AlignToVector(x, y, z, axis) end

---@param x number
---@param y number
---@param z number
---@param axis number
---@param rate number
function Entity:AlignToVector(x, y, z, axis, rate) end

---@param x number
---@param y number
---@param z number
---@param axis number
---@param rate number
---@param roll number
function Entity:AlignToVector(x, y, z, axis, rate, roll) end

---@param v Vec3
function Entity:AlignToVector(v) end

---@param v Vec3
---@param axis number
function Entity:AlignToVector(v, axis) end

---@param v Vec3
---@param axis number
---@param rate number
function Entity:AlignToVector(v, axis, rate) end

---@param v Vec3
---@param axis number
---@param rate number
---@param roll number
function Entity:AlignToVector(v, axis, rate, roll) end

---@param navagent NavAgent
function Entity:Attach(navagent) end

---@param model Model
---@param bone Bone
function Entity:Attach(model, bone) end

function Entity:ClearTags() end

---@param world World
---@return Entity
function Entity:Copy(world) end

---@param world World
---@param recursive boolean
---@return Entity
function Entity:Copy(world, recursive) end

---@param world World
---@param recursive boolean
---@param callstart boolean
---@return Entity
function Entity:Copy(world, recursive, callstart) end

---@return void
function Entity:Detach() end

---@param sound Sound
---@param range number
---@param volume number
---@param pitch number
---@param loopmode boolean
---@return Speaker
function Entity:EmitSound(sound, range, volume, pitch, loopmode) end

---@param name string
---@param casesensitive boolean
---@return Entity
function Entity:FindChild(name, casesensitive) end

---@param casesensitive boolean
---@return table
function Entity:FindChild(casesensitive) end

---@return boolean
function Entity:GetAirborne() end

---@return Vec3
function Entity:GetAngularVelocity() end

---@param mode number
---@return xAabb
function Entity:GetBounds(mode) end

---@return Collider
function Entity:GetCollider() end

---@return number
function Entity:GetCollisionType() end

---@return Vec4
function Entity:GetColor() end

---@param name string
---@return Component
function Entity:GetComponent(name) end

---@return boolean
function Entity:GetCrouched() end

---@param entity Entity
---@return number
function Entity:GetDistance(entity) end

---@param point Vec3
---@return number
function Entity:GetDistance(point) end

---@param x number
---@param y number
---@param z number
---@return number
function Entity:GetDistance(x, y, z) end

---@param recursive boolean
---@return boolean
function Entity:GetHidden(recursive) end

---@return number
function Entity:GetMass() end

---@param GetMatrix(booleanglobal Mat4
function Entity:GetMatrix(GetMatrix(booleanglobal) end

---@return Entity
function Entity:GetParent() end

---@return number
function Entity:GetPhysicsMode() end

---@return number
function Entity:GetPickMode() end

---@return Vec3
function Entity:GetPosition() end

---@param global boolean
---@return Vec3
function Entity:GetPosition(global) end

---@return Quat
function Entity:GetQuaternion() end

---@param global boolean
---@return Quat
function Entity:GetQuaternion(global) end

---@return Vec3
function Entity:GetRotation() end

---@param global boolean
---@return Vec3
function Entity:GetRotation(global) end

---@return Vec3
function Entity:GetScale() end

---@return string
function Entity:GetUuid() end

---@param global boolean
---@return Vec3
function Entity:GetVelocity(global) end

---@return World
function Entity:GetWorld() end

---@param world World
---@return Entity
function Entity:Instantiate(world) end

---@param world World
---@param recursive boolean
---@return Entity
function Entity:Instantiate(world, recursive) end

---@param world World
---@param recursive boolean
---@param callstart boolean
---@return Entity
function Entity:Instantiate(world, recursive, callstart) end

function Entity:Listen() end

---@param x number
---@param y number
---@param z number
function Entity:Move(x, y, z) end

---@param movement Vec3
function Entity:Move(movement) end

---@param entity Entity
---@param axis number
---@param rate number
---@param roll number
function Entity:Point(entity, axis, rate, roll) end

---@param x number
---@param y number
---@param z number
---@param axis number
---@param rate number
---@param roll number
function Entity:Point(x, y, z, axis, rate, roll) end

---@param position Vec3
---@param axis number
---@param rate number
---@param roll number
function Entity:Point(position, axis, rate, roll) end

---@param record boolean
function Entity:RecordCollisions(record) end

---@param stringtag const
function Entity:RemoveTag(stringtag) end

---@param omega Vec3
---@param global boolean
function Entity:SetAngularVelocity(omega, global) end

---@param x number
---@param y number
---@param z number
---@param global boolean
function Entity:SetAngularVelocity(x, y, z, global) end

---@param collision Collider
function Entity:SetCollider(collision) end

---@param collisiontype number
---@param recursive boolean
function Entity:SetCollisionType(collisiontype, recursive) end

---@param color Vec4
function Entity:SetColor(color) end

---@param color Vec4
---@param recursive boolean
function Entity:SetColor(color, recursive) end

---@param r number
---@param g number
---@param b number
function Entity:SetColor(r, g, b) end

---@param r number
---@param g number
---@param b number
---@param recursive boolean
function Entity:SetColor(r, g, b, recursive) end

---@param luminance number
function Entity:SetColor(luminance) end

---@param luminance number
---@param recursive boolean
function Entity:SetColor(luminance, recursive) end

---@param lineardamping number
---@param angulardamping number
function Entity:SetDamping(lineardamping, angulardamping) end

---@param elasticity number
function Entity:SetElasticity(elasticity) end

---@param kinematicfriction number
---@param staticfriction number
function Entity:SetFriction(kinematicfriction, staticfriction) end

---@param hide boolean
function Entity:SetHidden(hide) end

---@param angle number
---@param move number
---@param strafe number
---@param jump number
---@param crouch boolean
---@param maxaccel number
---@param maxdecel number
function Entity:SetInput(angle, move, strafe, jump, crouch, maxaccel, maxdecel) end

---@param mass number
function Entity:SetMass(mass) end

---@param matrix Mat4
function Entity:SetMatrix(matrix) end

---@param matrix Mat4
---@param global boolean
function Entity:SetMatrix(matrix, global) end

---@param mode boolean
function Entity:SetNavObstacle(mode) end

---@param parent Entity
function Entity:SetParent(parent) end

---@param parent Entity
---@param global boolean
function Entity:SetParent(parent, global) end

---@param mode number
function Entity:SetPhysicsMode(mode) end

---@param pickmode number
function Entity:SetPickMode(pickmode) end

---@param x number
---@param y number
---@param z number
function Entity:SetPosition(x, y, z) end

---@param x number
---@param y number
---@param z number
---@param global boolean
function Entity:SetPosition(x, y, z, global) end

---@param position Vec3
function Entity:SetPosition(position) end

---@param position Vec3
---@param global boolean
function Entity:SetPosition(position, global) end

---@param renderlayers number
function Entity:SetRenderLayers(renderlayers) end

---@param pitch number
---@param yaw number
---@param roll number
function Entity:SetRotation(pitch, yaw, roll) end

---@param pitch number
---@param yaw number
---@param roll number
---@param global boolean
function Entity:SetRotation(pitch, yaw, roll, global) end

---@param rotation Vec3
function Entity:SetRotation(rotation) end

---@param rotation Vec3
---@param global boolean
function Entity:SetRotation(rotation, global) end

---@param rotation Quat
function Entity:SetRotation(rotation) end

---@param rotation Quat
---@param global boolean
function Entity:SetRotation(rotation, global) end

---@param scale Vec3
function Entity:SetScale(scale) end

---@param x number
---@param y number
---@param z number
function Entity:SetScale(x, y, z) end

---@param scale number
function Entity:SetScale(scale) end

---@param x number
---@param y number
---@param z number
function Entity:SetVelocity(x, y, z) end

---@param x number
---@param y number
---@param z number
---@param global boolean
function Entity:SetVelocity(x, y, z, global) end

---@param velocity Vec3
function Entity:SetVelocity(velocity) end

---@param velocity Vec3
---@param global boolean
function Entity:SetVelocity(velocity, global) end

function Entity:Staticize() end

function Entity:Sync() end

---@param x number
---@param y number
---@param z number
function Entity:Translate(x, y, z) end

---@param x number
---@param y number
---@param z number
---@param global boolean
function Entity:Translate(x, y, z, global) end

---@param translation Vec3
function Entity:Translate(translation) end

---@param translation Vec3
---@param global boolean
function Entity:Translate(translation, global) end

---@param pitch number
---@param yaw number
---@param roll number
function Entity:Turn(pitch, yaw, roll) end

---@param pitch number
---@param yaw number
---@param roll number
---@param global boolean
function Entity:Turn(pitch, yaw, roll, global) end

---@param rotation Vec3
function Entity:Turn(rotation) end

---@param rotation Vec3
---@param global boolean
function Entity:Turn(rotation, global) end

---@param rotation Quat
function Entity:Turn(rotation) end

---@param rotation Quat
---@param global boolean
function Entity:Turn(rotation, global) end

---@param mode number
function Entity:UpdateBounds(mode) end

