ChangeEmission = {}
ChangeEmission.name = "ChangeEmission"
ChangeEmission.color1 = Vec3(0)--"Color 1" COLOR
ChangeEmission.color2 = Vec3(0)--"Color 2" COLOR
ChangeEmission.color3 = Vec3(0)--"Color 3" COLOR

function ChangeEmission:SetColor1()--in
    self.entity:SetEmissionColor(self.color1.r, self.color1.g, self.color1.b)
end

function ChangeEmission:SetColor2()--in
    self.entity:SetEmissionColor(self.color2.r, self.color2.g, self.color2.b)
end

function ChangeEmission:SetColor3()--in
    self.entity:SetEmissionColor(self.color3.r, self.color3.g, self.color3.b)
end

RegisterComponent("ChangeEmission", ChangeEmission)
return ChangeEmission