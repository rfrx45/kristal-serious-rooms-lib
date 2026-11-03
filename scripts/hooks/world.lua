---@class World: World
local World, super = HookSystem.hookScript(World)

function World:resetSeriousVars()
    SERIOUS_LIB.loaded = false
    SERIOUS_LIB.firstRoom = false
    return true
end

function World:hurtParty(battler, amount)
    super.hurtParty(self, battler, amount)
    self:resetSeriousVars()
end


return World