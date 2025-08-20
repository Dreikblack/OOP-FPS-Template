Mover = {}
Mover.name = "Mover"

Mover.movementspeed = Vec3(0)--"Movement"
Mover.rotationspeed = Vec3(0,1,0)--"Rotation"
Mover.globalcoords = false--"World space"

function Mover:Start()
    
end

function Mover:Update()
    if self.globalcoords then
        self.entity:Translate(self.movementspeed / 60, true)
    else
        self.entity:Move(self.movementspeed / 60)
    end
    self.entity:Turn(self.rotationspeed / 60, self.globalcoords)
end

RegisterComponent("Mover", Mover)

return Mover