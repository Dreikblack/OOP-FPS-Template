PushButton = CreateClass("PushButton")
PushButton:AddInterface("Usable")
PushButton.name = "PushButton"
PushButton.enabled = true--"Enabled"

function PushButton:Use(entity)--out
end

RegisterComponent("PushButton", PushButton)
return PushButton
