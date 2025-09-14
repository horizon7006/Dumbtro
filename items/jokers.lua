SMODS.Atlas { -- :3 hehe
    key = 'colon3',
    path = 'colon3.png',
    px = 71,
    py = 95,
}

SMODS.Joker {
    key = "colon3",
    config = {
        extra = {
            joker_slots = 1
        }
    },
    loc_txt = {
        name = ':3',
        text = {
            'gives you an extra joker slot everytime you play a card! :3'
        },
    },
    pos = { x = 0, y = 0 },
    display_size = { w = 71 * 1, h = 95 * 1 },
    cost = 5,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'colon3',
    pools = { ["brainrot_joker_pool"] = true },

    set_ability = function(self, card, initial)
        card:set_edition("e_negative", true)
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            return {
                func = function()
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil,
                        {
                            message = "+" .. tostring(card.ability.extra.joker_slots) .. " Joker Slot",
                            colour = G.C
                                .DARK_EDITION
                        })
                    G.jokers.config.card_limit = G.jokers.config.card_limit + card.ability.extra.joker_slots
                    return true
                end
            }
        end
    end
}

SMODS.Atlas { -- 67 kid
    key = 'sixseven',
    path = 'sixseven.png',
    px = 71,
    py = 95,
}

SMODS.Joker {
    key = 'sixseven',
    config = {
        extra = {
            mult = 4
        }
    },
    loc_txt = {
        name = 'SIX SEVEN',
        text = { '{C:red}+4{} Mult' },
    },
    pos = { x = 0, y = 0 },
    display_size = { w = 71 * 1, h = 95 * 1 },
    cost = 6,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'sixseven',
    pools = { ["brainrot_joker_pool"] = true },

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}


SMODS.Atlas {
    key = 'fourtyone',
    path = 'fourtyone.png',
    px = 71,
    py = 95,
}

SMODS.Joker {
    key = 'fourtyone',
    config = {
        extra = {
            mult = 41
        }
    },
    loc_txt = {
        name = '41 BUT I GOT 41{C:red} Mult{}',
        text = { 'hi' },
    },
    pos = { x = 0, y = 0 },
    display_size = { w = 71 * 1, h = 95 * 1 },
    cost = 20,
    rarity = 4,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'fourtyone',
    pools = { ["brainrot_joker_pool"] = true },

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            return {
                message = "im better than the 67 kid", -- fuck you
                mult = card.ability.extra.mult,
            }
        end
    end
}
