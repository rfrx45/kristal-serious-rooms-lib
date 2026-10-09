---@class Encounter: Encounter
local Encounter, super = HookSystem.hookScript(Encounter)

function Encounter:init()
    super.init(self)
    self.serious = false
    self.serious_members = nil
end

return Encounter