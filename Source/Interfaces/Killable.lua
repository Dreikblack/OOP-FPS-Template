return CreateInterface("Killable", {
    health = 100,
    team = 0,
    Kill = function(self) end,
    IsDead = function(self) 
        return self.health <= 0 
    end,
    DamageEffect = function(self, amount, attacker) end,
    Damage = function(self, amount, attacker)
        if self:IsDead() then 
            return 
        end
        self.health = MoveTowards(self.health, 0, amount)
        self:DamageEffect()
        if self:IsDead() then 
            self:Kill() 
        end
    end
})
