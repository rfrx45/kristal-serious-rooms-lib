---@class PartyBattler : PartyBattler
local PartyBattler, super = HookSystem.hookScript(PartyBattler)


function PartyBattler:resetSprite(...)
    super.resetSprite(self, ...)
    if self.sprite then
        if Game.battle.encounter.serious then
            if Game.battle.encounter.serious_members == nil then
                Logging.infoNotify(self.chara.actor.name, " is very serious!!!!!!!")
                self:setAnimation(self.chara.actor.serious_battle_path)
        else
            if self.chara.actor.serious_sprites and TableUtils.contains(Game.battle.encounter.serious_members, self.chara.actor.id) then
                Logging.infoNotify(self.chara.actor.name, " is very serious!!!!!!!")
                self:setAnimation(self.chara.actor.serious_battle_path)
            end
        end

    else
        self:setAnimation("battle/idle")
    end
    end
end


return PartyBattler