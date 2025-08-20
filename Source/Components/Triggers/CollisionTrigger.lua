-- CollisionTrigger.lua
CollisionTrigger = {}
CollisionTrigger.name = "CollisionTrigger"
CollisionTrigger.once = false--"Only once"
CollisionTrigger.enabled = true--"Enabled"

function CollisionTrigger:Start()
    if self.entity:GetCollisionType() == COLLISION_TRIGGER then
        self.entity:SetRenderLayers(0)
        self.entity:SetShadows(false)
        self.entity:SetPickMode(PICK_NONE)
    end
end

function CollisionTrigger:Collide(collidedEntity, position, normal, speed)--out
    if not self.enabled then
        return
    end
    if self.once then
        self:Disable()
    end
end

function CollisionTrigger:Disable()
    self.enabled = false
end

function CollisionTrigger:Enable()
    self.enabled = true
end

RegisterComponent("CollisionTrigger", CollisionTrigger)

return CollisionTrigger