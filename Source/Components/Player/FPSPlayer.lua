FPSPlayer = CreateClass("FPSPlayer")
FPSPlayer:AddInterface("Killable")
FPSPlayer.name = "FPSPlayer"
FPSPlayer.enabled = true -- "Enabled"
FPSPlayer.health = 100 -- "Health"
FPSPlayer.team = 0 -- "Team" ["Good", "Bad", "Neutral"]
FPSPlayer.fov = 70 -- "FOV"
FPSPlayer.eyeHeight = 1.65 -- "Eye height"
FPSPlayer.crouchEyeHeight = 0.7 -- "Crouch eye height"
FPSPlayer.mouseSmoothing = 2.0 -- "Mouse smoothing"
FPSPlayer.mouseLookSpeed = 1.0 -- "Mouse look smooth"
FPSPlayer.moveSpeed = 4.0 -- "Move speed"
FPSPlayer.jumpForce = 5.0 -- "Jump force"
FPSPlayer.jumpLunge = 1.2 -- "Jump lunge"
FPSPlayer.initialSlot = 0 -- "Initial slot" ["Slot 1", "Slot 2", "Slot 3", "Slot 4"]
FPSPlayer.slot0 = "" -- "Slot 1" PREFAB
FPSPlayer.slot1 = "" -- "Slot 2" PREFAB
FPSPlayer.slot2 = "" -- "Slot 3" PREFAB
FPSPlayer.slot3 = "" -- "Slot 4" PREFAB

FPSPlayer.soundStep = {}
FPSPlayer.soundHit = {}
FPSPlayer.freeLookStarted = false
FPSPlayer.freeLookMousePos = Vec3(0)
FPSPlayer.freeLookRotation = Vec3(0)
FPSPlayer.lookChange = Vec2(0)
FPSPlayer.mouseDelta = Vec2(0)
FPSPlayer.currentCameraPosition = Vec3(0)
FPSPlayer.lastFootStepTime = 0
FPSPlayer.jumpKey = false
FPSPlayer.running = false
FPSPlayer.maxLean = 0
FPSPlayer.leanSpeed = 1
FPSPlayer.cameraShakeRotation = Quat(0, 0, 0, 1)
FPSPlayer.smoothedCameraShakeRotation = Quat(0, 0, 0, 1)
FPSPlayer.flashlightRotation = Quat(0, 0, 0, 1)
FPSPlayer.weapons = {}
FPSPlayer.movement = Vec3(0)
FPSPlayer.navmesh = nil
FPSPlayer.agent = nil
FPSPlayer.soundJump = nil
FPSPlayer.soundFlashlight = nil
FPSPlayer.deadBodyCollider = nil
FPSPlayer.usePromtTile = nil
FPSPlayer.healthTile = nil

function FPSPlayer:Load(properties, binstream, scene, flags, extra)
    local world = self.entity:GetWorld()
    local entity = self.entity

    self.weapons = {}
    for n = 0, 3 do
        local key = "slot" .. tostring(n)
        if type(properties[key]) == "string" and properties[key] ~= "" then
            local path = properties[key]
            local prefab = LoadPrefab(world, path)
            self.weapons[n + 1] = prefab
        end
    end

    if not self.camera then
        self.camera = CreateCamera(world)
        self.camera:Listen()
        local font = LoadFont("Fonts/arial.ttf")
        local window = ActiveWindow()
        local framebuffer = window:GetFramebuffer()
        local fbSize = framebuffer:GetSize()
        local cx = Round(fbSize.x / 2)
        local cy = Round(fbSize.y / 2)

        self.usePromtTile = CreateTile(self.camera, font, "Press E", 20, TEXT_CENTER, 1.5)
        self.usePromtTile:SetHidden(true)
        self.usePromtTile:SetPosition(cx, cy)
        self.healthTile = CreateTile(self.camera, font, "Heath:"..tostring(Round(self.health)), 20, TEXT_CENTER, 1.5)
        self.healthTile:SetPosition(100, fbSize.y - 100)
    end

    local pos = entity:GetPosition(true)
    self.camera:SetPosition(pos.x, pos.y + self.eyeheight, pos.z)
    self.camera:SetRotation(0, 0, 0)
    self.camera:SetFov(self.fov)

    if type(self.selectedSlot) ~= "number" then
        self.selectedSlot = self.initialSlot + 1
    end
    if self.weapons[self.selectedSlot] then
        local entity = self.weapons[self.selectedSlot]
        local weapon = entity:GetComponent("FPSGun")
        if weapon then
            weapon:AttachToPlayer(self)
        end
    end

    local n
    for n = 1, #scene.navmeshes do
        self.navmesh = scene.navmeshes[n]
    end

    return true
end

function Monster:Save(properties, binstream, scene, flags, extra)
    properties.health = self.health
end

function FPSPlayer:Start()

    local entity = self.entity
    local world = entity:GetWorld()

    -- Store the position into 
    self.currentCameraPosition = self.camera:GetPosition(true)

    -- Set the physics mode to PHYSICS_PLAYER, this will enable the character controller.
    self.entity:SetPhysicsMode(PHYSICS_PLAYER)

    -- If the mass happens to be 0, force set the mass to a default value.
    if self.entity:GetMass() == 0.0 then
        self.entity:SetMass(78)
    end

    -- Set the collision type to  COLLISION_PLAYER
    self.entity:SetCollisionType(COLLISION_PLAYER)

    -- Disable shadows
    self.entity:SetShadows(false)

    -- Never render this entity!
    self.entity:SetRenderLayers(0)

    self.entity:SetNavObstacle(false)

    if self.navmesh ~= nil then
        self.agent = CreateNavAgent(self.navmesh, 0.25, 1.8)
        self.agent:SetPosition(self.entity:GetPosition(true))
    end

    self.flashlightRotation = self.camera:GetQuaternion(true)

    -- Listen for window events we want to use
    self:Listen(EVENT_KEYDOWN, nil)
    self:Listen(EVENT_KEYUP, nil)

    local n
    for n = 1, 3 do
        if FileType("Sound/Impact/bodypunch" .. tostring(n) .. ".wav") == 1 then
            self.soundHit[n] = LoadSound("Sound/Impact/bodypunch" .. tostring(n) .. ".wav")
        end
    end
    self.soundJump = LoadSound("Sound/Footsteps/Concrete/jump.wav")
    self.soundFlashlight = LoadSound("Sound/Items/flashlightswitch.wav")
    for n = 1, 4 do
        self.soundStep[n] = LoadSound("Sound/Footsteps/Concrete/step" .. tostring(n) .. ".wav")
    end

    local scale = 0.25
    local points = {}

    -- Add corners for a cube
    table.insert(points, Vec3(0.5, 0.5, 0.5) * scale)
    table.insert(points, Vec3(-0.5, 0.5, 0.5) * scale)
    table.insert(points, Vec3(0.5, -0.5, 0.5) * scale)
    table.insert(points, Vec3(-0.5, -0.5, 0.5) * scale)
    table.insert(points, Vec3(0.5, 0.5, -0.5) * scale)
    table.insert(points, Vec3(-0.5, 0.5, -0.5) * scale)
    table.insert(points, Vec3(0.5, -0.5, -0.5) * scale)
    table.insert(points, Vec3(-0.5, -0.5, -0.5) * scale)

    -- Add some points sticking out so the shape rolls a little bit
    table.insert(points, Vec3(0.0, 0.0, -0.667) * scale)
    table.insert(points, Vec3(0.0, 0.0, 0.667) * scale)
    table.insert(points, Vec3(0.0, -0.667, 0.0) * scale)
    table.insert(points, Vec3(0.0, 0.667, 0.0) * scale)
    table.insert(points, Vec3(-0.667, 0.0, 0.0) * scale)
    table.insert(points, Vec3(0.667, 0.0, 0.0) * scale)

    self.deadbodycollider = CreateConvexHullCollider(points);

    self.entity:AddTag("player")
    self.entity:AddTag("good")
end

function FPSPlayer:ToggleFlashlight()
    if self.flashlight == nil or self.flashlight:GetHidden() then
        self:ShowFlashlight()
    else
        self:HideFlashlight()
    end
end

function FPSPlayer:ShowFlashlight()
    if self.soundFlashlight then
        self.soundFlashlight:Play()
    end

    if self.flashlight == nil or self.flashlight:GetHidden() then
        if self.flashlight == nil then
            local world = self.entity:GetWorld()
            self.flashlight = CreateSpotLight(world)
            self.flashlight:SetConeAngles(20, 10)
            self.flashlight:SetRange(0.01, 10)
        end
        self.flashlightRotation = self.camera:GetQuaternion(true)
        self.flashlight:SetHidden(false)
        self:UpdateFlashlight()
        self:FireOutputs("ShowFlashlight")
    end
end

function FPSPlayer:HideFlashlight()
    if self.flashlight then
        self.flashlight:SetHidden(true)
        self:FireOutputs("HideFlashlight")
    end
end

function FPSPlayer:UpdateFlashlight()
    if self.flashlight then
        local pos = self.camera:GetPosition(true)
        pos = pos + TransformNormal(0, -1, 0, self.camera, nil) * 0.25
        pos = pos + TransformNormal(1, 0, 0, self.camera, nil) * 0.25
        self.flashlight:SetPosition(pos, true)
        self.flashlightRotation = self.flashlightRotation:Slerp(self.camera:GetQuaternion(true), 0.2)
        self.flashlight:SetRotation(self.flashlightRotation, true)
    end
end

function FPSPlayer:ProcessEvent(e)
    if not self:GetEnabled() then
        return true
    end
    if self:IsDead() then
        return true
    end

    local world = self.entity:GetWorld()

    if e.id == EVENT_KEYDOWN then
        if e.data == KEY_SPACE then
            self.jumpKey = true
        elseif e.data == KEY_SHIFT then
        elseif e.data == KEY_F then
            self:ToggleFlashlight()
        elseif e.data == KEY_E then
        end
    elseif e.id == EVENT_KEYUP then
        if e.data == KEY_SPACE then
            self.jumpKey = false
        elseif e.data == KEY_SHIFT then
        end
    end
    return true
end

function FPSPlayer:Update()
    if not self:GetEnabled() then
        return
    end
    if self:IsDead() then
        return
    end

    -- Disable running if it is not allowed
    if self.running and self.weapon and not self.weapon:PlayerCanRun() then
        self.running = false
    end
    self.movement = Vec3(0, 0, 0)

    local jump = 0
    local crouchkey = false
    local crouched = false

    local entity = self.entity
    local world = entity:GetWorld()
    local window = ActiveWindow()

    if window then
        self.running = window:KeyDown(KEY_SHIFT)

        local framebuffer = window:GetFramebuffer()
        local fbsize = framebuffer:GetSize()

        local cx = Round(fbsize.x / 2)
        local cy = Round(fbsize.y / 2)
        local mpos = window:GetMousePosition()
        window:SetMousePosition(cx, cy)
        local centerpos = window:GetMousePosition()

        if self.freeLookStarted then
            local looksmoothing = self.mouseSmoothing
            local lookspeed = self.mouseLookSpeed / 10.0

            local dx = mpos.x - centerpos.x
            local dy = mpos.y - centerpos.y

            if looksmoothing > 0.0 then
                self.mouseDelta.x = CurveValue(dx, self.mouseDelta.x, 1.0 + looksmoothing)
                self.mouseDelta.y = CurveValue(dy, self.mouseDelta.y, 1.0 + looksmoothing)
            else
                self.mouseDelta.x = dx
                self.mouseDelta.y = dy
            end

            self.freeLookRotation.x = Clamp(self.freeLookRotation.x + self.mouseDelta.y * lookspeed, -90.0, 90.0)
            self.freeLookRotation.y = self.freeLookRotation.y + self.mouseDelta.x * lookspeed
            self.camera:SetRotation(self.freeLookRotation, true)
            self.freeLookMousePos = Vec3(mpos.x, mpos.y)
        else
            self.freeLookStarted = true
            self.freeLookRotation = self.camera:GetRotation(true)
            self.freeLookMousePos = Vec3(window:GetMousePosition().x, window:GetMousePosition().y)
            window:SetCursor(CURSOR_NONE)
        end

        -- Camera shake when hit
        local speed = 0.1
        local q = Vec4(self.cameraShakeRotation.x, self.cameraShakeRotation.y, self.cameraShakeRotation.z,
            self.cameraShakeRotation.w)
        local diff = q:Length()
        self.cameraShakeRotation = self.cameraShakeRotation:Slerp(Quat(0, 0, 0, 1), math.min(1.0, speed / diff))
        self.smoothedCameraShakeRotation = self.smoothedCameraShakeRotation:Slerp(self.cameraShakeRotation, 0.5)
        self.camera:Turn(self.smoothedCameraShakeRotation:ToEuler(), false)

        -- We use the base class' enabled bool to lock the movement.
        if self:GetEnabled() then
            local speed = self.moveSpeed
            crouchkey = window:KeyDown(KEY_C)
            if entity:GetAirborne() then
                speed = speed * 0.25
            else
                if self.running then
                    speed = speed * 2.0
                elseif crouched then
                    speed = speed * 0.5
                end

                if self.jumpKey and not crouched then
                    jump = self.jumpForce
                    if self.soundJump then
                        self.soundJump:Play()
                    end
                end
            end

            if window:KeyDown(KEY_D) then
                self.movement.x = self.movement.x + speed
            end
            if window:KeyDown(KEY_A) then
                self.movement.x = self.movement.x - speed
            end
            if window:KeyDown(KEY_W) then
                self.movement.z = self.movement.z + speed
            end
            if window:KeyDown(KEY_S) then
                self.movement.z = self.movement.z - speed
            end
            if self.movement.x ~= 0.0 and self.movement.z ~= 0.0 then
                self.movement = self.movement * 0.707
            end
            if jump ~= 0.0 then
                self.movement.x = self.movement.x * self.jumpLunge
                if self.movement.z > 0.0 then
                    self.movement.z = self.movement.z * self.jumpLunge
                end
            end
        end
        -- to decide later if we want to show or hide prompt tile
        local doHideTile = true
        -- cx and cy are screen center coordinates which were created above
        local pickInfo = self.camera:Pick(framebuffer, cx, cy, 0, true)
        if pickInfo.success and pickInfo.entity and pickInfo.entity:GetDistance(self.entity) < 2.0 then
            local usable = GetComponentByInterface(pickInfo.entity, "Usable")
            if usable and usable:GetEnabled() then
                doHideTile = false
                if window:KeyHit(KEY_E) then
                    usable:Use()
                end
            end
        end
        self.usePromtTile:SetHidden(doHideTile)
    end

    entity:SetInput(self.camera.rotation.y, self.movement.z, self.movement.x, jump, crouchkey)

    if self.agent then
        self.agent:SetPosition(entity:GetPosition(true))
    end

    local eye = self.eyeHeight
    if entity:GetCrouched() then
        if not entity:GetAirborne() then
            eye = self.crouchEyeHeight
        end
        crouched = true
    else
        eye = self.eyeHeight
        crouched = false
    end

    local y = TransformPoint(self.currentCameraPosition, nil, entity).y
    local h = eye
    if not entity:GetAirborne() and (y < eye or eye ~= self.eyeHeight) then
        h = Mix(y, eye, 0.25)
    end
    self.currentCameraPosition = TransformPoint(0, h, 0, entity, nil)
    self.camera:SetPosition(self.currentCameraPosition, true)

    self:UpdateFlashlight()
    self:UpdateFootsteps()

    self.jumpKey = false
end

function FPSPlayer:UpdateFootsteps()
    local entity = self.entity
    local world = entity:GetWorld()
    if not world then
        return
    end
    if not entity:GetAirborne() and self.movement:Length() > 0.0 then
        local now = world:GetTime()
        local speed = entity:GetVelocity().xz:Length()
        local footsteptime = Clamp(500.0 * self.moveSpeed / speed, 250.0, 1000.0)
        if now - self.lastFootStepTime > footsteptime and #self.soundStep > 0 then
            self.lastFootStepTime = now
            local index = Floor(math.random(1, #self.soundStep))
            if self.soundStep[index] then
                self.soundStep[index]:Play()
            end
        end
    end
end

function FPSPlayer:DamageEffect(amount, attacker)
    local a = math.random() * 360.0
    self.cameraShakeRotation = Quat(Vec3(math.cos(a) * 45.0, math.sin(a) * 45.0, 0.0))
    if #self.soundHit > 0 then
        local index = Floor(math.random(1, #self.soundHit))
        if self.soundHit[index] then
            self.soundHit[index]:Play()
        end
    end
    self.healthTile:SetText("Heath:"..tostring(Round(self.health)))
end

function FPSPlayer:Kill()
    self.camera:SetParent(nil)
    self.camera:SetCollider(self.deadbodycollider)
    self.camera:SetVelocity(self.entity:GetVelocity())
    self.camera:SetMass(10)
    self.camera:SetCollisionType(COLLISION_DEBRIS)
    self.camera:AddTorque(50, Random(-20, 20), Random(-20, 20))

    if self.weapon then
        self.weapon:DetachFromPlayer(self)
    end

    self.weapon = nil
    self.entity:SetMass(0)
    self.entity:SetCollisionType(COLLISION_NONE)
    self.entity:SetCollider(nil)
    self.entity:SetPhysicsMode(PHYSICS_DISABLED)

    if self.flashlight then
        self.flashlight:SetHidden(true)
    end

    self:Disable()
end

RegisterComponent("FPSPlayer", FPSPlayer)
return FPSPlayer
