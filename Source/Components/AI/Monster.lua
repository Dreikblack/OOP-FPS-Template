Monster = CreateClass("Monster")
Monster:AddInterface("Killable")
Monster.name = "Monster"
Monster.health = 100 -- "Health"
Monster.enabled = true -- "Enabled"
Monster.team = 2 -- "Team" ["Good", "Bad", "Neutral"]
Monster.alertSound = "" -- "Alert sound" SOUND
Monster.attackSound1 = "" -- "Attack sound 1" SOUND
Monster.attackSound2 = "" -- "Attack sound 2" SOUND
Monster.target = nil -- "Target"
Monster.alive = true
Monster.nextScanforTargetTime = 0
Monster.scanRange = 100
Monster.eyeHeight = 1.65
Monster.soundAttack = {}
Monster.navmeshIndex = 1
Monster.damage = 20
Monster.meleeDamage = 20

function Monster:Enable() -- in
    if self.soundAlert then
        self.soundAlert:Play()
    end
    Component(self):Enable()
end

function Monster:Start()
    local entity = self.entity
    local model = Model(entity)

    if model then
        local seq = model:FindAnimation("attack1")
        if seq ~= 0 then
            local count = model:CountAnimationFrames(seq)
            model.skeleton:AddHook(seq, count - 1, Monster.EndAttackHook, self)
        end

        seq = model:FindAnimation("attack2")
        if seq ~= 0 then
            local count = model:CountAnimationFrames(seq)
            model.skeleton:AddHook(seq, count - 1, Monster.EndAttackHook, self)
        end
    end

    if self.navmesh then
        self.agent = CreateNavAgent(self.navmesh, 0.5, 1.8)
        self.agent:SetPosition(entity:GetPosition(true))
        self.agent:SetRotation(entity:GetRotation(true).y)
        entity:SetPosition(0, 0, 0)
        entity:SetRotation(0, 180, 0)
        entity:Attach(self.agent)
    end

    entity:SetNavObstacle(false)
    entity:SetCollisionType(COLLISION_PLAYER)
    entity:SetMass(0)
    entity:SetPhysicsMode(PHYSICS_RIGIDBODY)

    entity:AddTag("player")
end

function Monster:Load(properties, binstream, scene, flags, extra)

    if type(properties.alertSound) == "string" then
        self.soundAlert = LoadSound(properties.alertSound)
    end

    for n = 1, 2 do
        local key = "attacksound" .. tostring(n)
        if type(properties[key]) == "string" then
            self.soundAttack[n] = LoadSound(properties[key])
        end
    end

    self.navmesh = nil
    if #scene.navmeshes > 0 then
        self.navmesh = scene.navmeshes[self.navmeshIndex]
    end

    return true
end

function Monster.EndAttackHook(skeleton, monster)
    local monster = Component(monster)
    monster.attacking = false
end

function Monster:DamageEffect(amount, attacker)
    if self.target == nil and attacker ~= self.entity then
        self.target = attacker -- Make him angry if someone hurts him!    
    end
end

function Monster:Kill()
    if not self.alive then
        return
    end
    local model = Model(self.entity)
    self.alive = false
    if model then
        model:Animate("death", 1, 250, ANIMATION_ONCE)
    end
    if self.agent then
        self.agent:Stop()
        self.entity:Detach()
        self.agent = nil
    end
    self.entity:SetCollisionType(COLLISION_NONE)
    self.entity:SetPickMode(PICK_NONE)
    self:Disable()
end

function Monster:Update()
    if self:IsDead() then
        self:Disable()
        return
    end

    local entity = self.entity
    local model = Model(self.entity)

    -- Stop attacking if target is dead
    if self.target then
        local killable = GetComponentByInterface(self.target, "Killable")
        if killable and killable:IsDead() then
            self.target = nil
            if self.agent then
                self.agent:Stop()
            end
        end
    end

    if self.attacking and self.target then
        if self.agent then
            local a = ATan(entity.matrix.t.x - self.target.matrix.t.x, entity.matrix.t.z - self.target.matrix.t.z)
            self.agent:SetRotation(a + 180)
        end
        if not self.attackFinished then
            local world = self.entity:GetWorld()
            if world then
                if world:GetTime() - self.meleeAttackTime > 300 then
                    self.attackFinished = true
                    local pos = entity:GetPosition(true)
                    local dest = self.target:GetPosition(true) + self.target:GetVelocity()
                    local attackRange = 3.0
                    if pos:DistanceToPoint(dest) < attackRange then
                        local killable = GetComponentByInterface(self.target, "Killable")
                        if killable then
                            killable:Damage(self.meleeDamage, entity)
                            if killable:IsDead() then
                                self.target = nil
                            end
                        end
                    end
                end
            end
        end
        return
    end

    if not self.target then
        self:ScanForTarget()
    end

    if self.target then
        if self.attacking == false and entity:GetDistance(self.target) > 3.0 then
            if self.agent then
                self.agent:Navigate(self.target:GetPosition(true))
                self.agent:SetMaxSpeed(6)
            end
            if model then
                model:Animate("run")
            end
        else
            if self.agent then
                self.agent:Stop()
            end
            if not self.attacking then
                local world = entity:GetWorld()
                if world then
                    self.meleeAttackTime = world:GetTime()
                end
                local index = Ceil(math.random(1, 2))
                if model then
                    model:Animate("attack" .. tostring(index), 1, 100, ANIMATION_ONCE)
                end
                if Ceil(Random(0, 2)) == 0 then
                    index = Ceil(Random(1, 2))
                    if self.soundAttack[index] then
                        entity:EmitSound(self.soundAttack[index])
                    end
                end
                self.attacking = true
                self.attackFinished = false
            end
        end
    else
        if model then
            model:Animate("idle", 1.0, 250, ANIMATION_LOOP, math.random(1000))
        end
    end
end

function Monster:ScanForTarget()
    local entity = self.entity
    local world = entity:GetWorld()
    if world then
        -- We only want to perform this about twice each second, staggering the operation between different entities
        local now = world:GetTime()
        if now < self.nextScanforTargetTime then
            return
        end
        self.nextScanforTargetTime = now + math.random(300, 500)

        local temp = entity:GetPickMode()
        entity:SetPickMode(PICK_NONE)

        local opposingTeam = "good"
        local players = world:GetTaggedEntities("good")
        local dist
        for _, player in ipairs(players) do
            local killable = GetComponentByInterface(player, "Killable")
            if killable and not killable:IsDead() then
                dist = player:GetDistance(entity)
                if dist < self.scanRange then
                    local temp2 = player:GetPickMode()
                    player:SetPickMode(PICK_NONE)
                    local A = self.entity:GetPosition(true) + Vec3(0, self.eyeHeight, 0)
                    local B = player:GetPosition(true)
                    B.y = B.y + 0.5
                    local pick = world:Pick(A, B, 0, false)
                    player:SetPickMode(temp2)
                    if not pick.success then
                        self.target = player
                        if self.soundAlert then
                            self.entity:EmitSound(self.soundAlert, 50)
                        end
                        break
                    end
                end
            end
        end
        entity:SetPickMode(temp)
    end
end

function Monster:Save(properties, binstream, scene, flags, extra)
    properties.health = self.health
end

RegisterComponent("Monster", Monster)
return Monster
