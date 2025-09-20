SMODS.Atlas {
    key = 'atlas_icecard',
    path = 'icecard.png',
    px = 71,
    py = 95
}

SMODS.Enhancement {
    key = 'icecard',
    atlas = 'atlas_icecard',
    config = { extra = { Xmult = 2 } },
    loc_txt = {
        name = 'Ice Card',
    },
    loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.Xmult } }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.main_scoring then
            return {
                Xmult = card.ability.extra.Xmult
            }
        end
    end,
    weight = 0,
    get_weight = function(self, weight, object_type)
        return 0
    end,
}
