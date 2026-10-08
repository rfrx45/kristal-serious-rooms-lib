---@class Map: Map
local Map, super = HookSystem.hookScript(Map)

function Map:onEnter()
    super.onEnter(self)
    if SERIOUS_LIB.loaded then
        SERIOUS_LIB:applySeriousSprites()
    end
end

function Map:onExit()
    super.onExit(self)
    if SERIOUS_LIB.firstRoom then SERIOUS_LIB.firstRoom = false
    else
        if self.data.properties["serious"] then
            for i, v in ipairs(Game.party) do
                local actorobj = Game.world:getCharacter(tostring(string.lower(v.id)))
                if actorobj.actor.serious_sprites then
                    actorobj:setWalkSprite(actorobj.actor.default)
                end
            end
        end
    end
end

return Map