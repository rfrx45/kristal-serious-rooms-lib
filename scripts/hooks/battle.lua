---@class Battle: Battle
local Battle, super = HookSystem.hookScript(Battle)

function Battle:resetSeriousVars()
    SERIOUS_LIB.loaded = false
    SERIOUS_LIB.firstRoom = false
    return true
end

function Battle:checkGameOver()
    super.checkGameOver(self)
    self:resetSeriousVars()
end

return Battle