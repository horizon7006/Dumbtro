SMODS.Atlas {
    key = 'atlas_luaseal',
    path = 'luaseal.png',
    px = 71,
    py = 95
}

SMODS.Seal {
    key = 'luaseal',
    pos = { x = 0, y = 0 },
    config = {
        extra = {
            chips = 4,
            mult = 10
        }
    },
    badge_colour = HEX('000081'),
    loc_txt = {
        name = 'Lua',
        label = 'Lua',
        text = { 'wow programming language so {s:7}cool{}' }
    },
    atlas = 'atlas_luaseal',
    unlocked = true,
    discovered = true,
    no_collection = false,
    loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.seal.extra.chips, center.ability.seal.extra.mult } }
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            return { chips = card.ability.seal.extra.chips, mult = card.ability.seal.extra.mult }
        end
    end
}
