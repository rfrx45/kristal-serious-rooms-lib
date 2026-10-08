SERIOUS_LIB = {}
local lib = SERIOUS_LIB

function lib:preInit()
    self.firstRoom = true
end

function lib:applySeriousSprites()
    if Game.world.map.data.properties["serious"] then
        local member_tbl_property = Game.world.map.data.properties["serious_members"]
        if member_tbl_property then
            for i, v in ipairs(Game.party) do
                local actorobj = Game.world:getCharacter(tostring(string.lower(v.id)))
                if actorobj.actor.serious_sprites and TableUtils.contains(member_tbl_property, v.id) then
                    actorobj:setWalkSprite(actorobj.actor.serious_path)
                end
            end
        else
            for i, v in ipairs(Game.party) do
                local actorobj = Game.world:getCharacter(tostring(string.lower(v.id)))
                if actorobj.actor.serious_sprites then
                    actorobj:setWalkSprite(actorobj.actor.serious_path)
                end
            end
        end
    end
end
function lib:postLoad()
    self.loaded = true
    lib:applySeriousSprites()
end
return lib