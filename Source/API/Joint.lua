---@meta
---@class Joint
Joint = {}

----------------------------
-- Methods
----------------------------

---@param GetLimits( Vec2
function Joint:GetLimits(GetLimits() end

---@return number
function Joint:GetOffset() end

---@param friction number
function Joint:SetFriction(friction) end

---@param lower number
---@param upper number
function Joint:SetLimits(lower, upper) end

---@param force number
function Joint:SetMaxForce(force) end

---@param torque number
function Joint:SetMaxTorque(torque) end

---@param |Description Parameter
function Joint:SetMaxTorque(|Description) end

function Joint:SetMaxTorque() end

---@param |maximumtorque torque
---@param Newton-meters in
function Joint:SetMaxTorque(|maximumtorque, Newton-meters) end

---@param offset number
function Joint:SetPose(offset) end

---@param position Vec3
---@param rotation Vec3
function Joint:SetPose(position, rotation) end

---@param position Vec3
---@param rotation Quat
function Joint:SetPose(position, rotation) end

---@param relaxation number
---@param spring number
---@param damper number
---@return void
function Joint:SetSpring(relaxation, spring, damper) end

----------------------------
-- Functions
----------------------------

---@param position Vec3
---@param parent Entity
---@param child Entity
---@return Joint
function CreateBallAndSocketJoint(position, parent, child) end

---@param position Vec3
---@param axis Vec3
---@param parent Entity
---@param child Entity
---@return Joint
function CreateHingeJoint(position, axis, parent, child) end

---@param position Vec3
---@param entity Entity
---@return Joint
function CreateKinematicJoint(position, entity) end

---@param position Vec3
---@param axis Vec3
---@param parent Entity
---@param child Entity
---@return Joint
function CreatePlaneJoint(position, axis, parent, child) end

---@param |Description Parameter
function CreatePlaneJoint(|Description) end

function CreatePlaneJoint() end

---@param |thejointposition position
function CreatePlaneJoint(|thejointposition) end

---@param |thejointaxis axis
function CreatePlaneJoint(|thejointaxis) end

---@param |theparententitytouse parent
---@param nilforafixedposition or
function CreatePlaneJoint(|theparententitytouse, nilforafixedposition) end

---@param |thechildentitytouse child
function CreatePlaneJoint(|thechildentitytouse) end

---@param position Vec3
---@param axis Vec3
---@param parent Entity
---@param child Entity
---@return Joint
function CreateSliderJoint(position, axis, parent, child) end

