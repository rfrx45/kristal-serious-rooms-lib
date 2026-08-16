SERIOUS_LIB = {}
local lib = SERIOUS_LIB

function lib:preInit()
    self.firstRoom = true
end

function lib:postLoad()
    self.loaded = true
    if Game.world.map.data.properties["serious"] then 
            for i, v in ipairs(Game.party) do
                local actorobj = Game.world:getCharacter(tostring(string.lower(v.name)))
                if actorobj.actor.serious_sprites then actorobj:setWalkSprite(actorobj.actor.serious_path) end
            end
    end
end
return lib