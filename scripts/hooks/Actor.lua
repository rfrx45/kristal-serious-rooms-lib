---@class Actor : Actor
local Actor, super = HookSystem.hookScript(Actor)

function Actor:init()
    super.init(self)
    self.serious_path = "serious"

    self.serious_sprites = false
end

return Actor