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
    cost = 2,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'colon3',
    pools = { ["dumb_joker_pool"] = true },

    loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.joker_slots } }
    end,

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
            mult = 10
        }
    },
    loc_txt = {
        name = 'SIX SEVEN',
        text = { '{C:red}+10{} Mult' },
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
    pools = { ["dumb_joker_pool"] = true },

    loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.mult } }
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}


SMODS.Atlas { -- 41
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
    pools = { ["dumb_joker_pool"] = true },

    loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.mult } }
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            return {
                message = "im better than the 67 kid", -- fuck you
                mult = card.ability.extra.mult
            }
        end
    end
}

SMODS.Atlas { -- Papyrus
    key = 'papyrus',
    path = 'papyrus.png',
    px = 71,
    py = 75
}



SMODS.Joker {
    key = 'papyrus',
    loc_txt = {
        name = 'Papyrus',
        text = { '{X:mult,C:white}X#2#{} mult',
            '{C:green}5 rerolls free{}',
        }
    },
    atlas = 'papyrus',
    config = {
        extra = {
            Xmult = 3,
            reroll_amount = 5
        }
    },
    cost = 4,
    rarity = 2,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pools = { ["dumb_joker_pool"] = true },

    loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.Xmult, center.ability.extra.reroll_amount } }
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            return {
                Xmult = card.ability.extra.Xmult
            }
        end
    end,

    add_to_deck = function(self, card, from_debuff)
        SMODS.change_free_rerolls(card.ability.extra.reroll_amount)
    end,

    remove_from_deck = function(self, card, from_debuff)
        SMODS.change_free_rerolls(-(card.ability.extra.reroll_amount))
    end
}


SMODS.Atlas { -- literally nothing
    key = 'nothing',
    path = 'nothing.png',
    px = 71,
    py = 75
}

SMODS.Joker {
    key = 'nothing',
    loc_txt = {
        name = 'Nothing.',
        text = {
            'uhhh'
        }
    },
    rarity = 2,
    cost = 3,
    atlas = 'nothing',
    pools = { ["dumb_joker_pool"] = true },
    unlocked = true,
    discovered = true,
}


SMODS.Atlas { -- my mother ate fries
    key = 'mymotheratefries',
    path = 'mymotheratefries.png',
    px = 71,
    py = 95
}


SMODS.Joker {
    key = 'mymotheratefries',
    loc_txt = {
        name = '{f:dumb_MarkerFelt}My Mother Ate Fries{}',
        text = {
            '{f:dumb_MarkerFelt,X:mult,C:white}X1{} {{f:dumb_MarkerFelt}Mult when you use a{} {f:dumb_MarkerFelt,C:attention}consumeable{}',
            '{f:dumb_MarkerFelt,C:inactive}(Currently {f:dumb_MarkerFelt,X:red,C:white}X#1#{}{f:dumb_MarkerFelt,C:inactive}){}{}'
        }
    },
    rarity = 1,
    cost = 2,
    atlas = 'mymotheratefries',
    config = {
        extra = {
            mult = 1
        }
    },
    pools = { ["dumb_joker_pool"] = true },
    unlocked = true,
    discovered = true,
    loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.Xmult } }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            return {
                Xmult = card.ability.extra.mult
            }
        end
        if context.using_consumeable and not context.consumeable.beginning_end
        then
            return {
                func = function()
                    card.ability.extra.mult = (card.ability.extra.mult) + 1
                    return true
                end
            }
        end
    end
}


SMODS.Atlas { -- Sanic
    key = 'sanic',
    path = 'sanic.png',
    px = 71,
    py = 95
}

SMODS.Joker {
    key = 'sanic',
    loc_txt = {
        name = 'Sanic',
        text = { 'idk find it yourself' }
    },
    rarity = 1,
    cost = 2,
    atlas = 'sanic',
    pools = { ["dumb_joker_pool"] = true },
    config = { extra = { mult = 0.5 } },
    unlocked = true,
    discovered = true,
    loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.mult } }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            return {
                mult = card.ability.extra.mult
            }
        end
    end,
    set_ability = function(self, card, initial)
        card:set_eternal(true)
    end
}



-- Muslim Cat
SMODS.Atlas {
    key = 'muslimcat',
    path = 'muslimcat.png',
    px = 71,
    py = 95
}

SMODS.Joker {
    key = 'muslimcat',
    loc_txt = {
        name = 'Muslim Cat',
        text = { '{C:mult}+#9#{} Mult' }
    },
    rarity = 2,
    cost = 3,
    atlas = 'muslimcat',
    pools = { ["dumb_joker_pool"] = true },
    config = { extra = { mult = 9 } },
    unlocked = true,
    discovered = true,
    loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.mult } }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            return {
                message = 'do not do haram things',
                mult = card.ability.extra.mult
            }
        end
    end
}


SMODS.Atlas {
    key = 'clanker',
    path = 'clanker.png',
    px = 71,
    py = 95
}

SMODS.Joker {
    key = 'clanker',
    loc_txt = {
        name = 'clanker',
        text = { 'buy it i dare you' }
    },
    rarity = 1,
    cost = 2,
    atlas = 'clanker',
    pools = { ["dumb_joker_pool"] = true },
    config = { extra = { x_chips = 2 } },
    unlocked = true,
    discovered = true,

    loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.x_chips } }
    end,

    add_to_deck = function(self, card, from_debuff)
        clankcount = 0
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i].config.center_key == "j_dumb_clanker" and G.jokers.cards[i].debuff ~= true then
                clankcount = clankcount + 1
            end
        end
        if clankcount < 1 then
            G.FUNCS.overlay_menu {
                definition = create_UIBox_custom_video1("robotcooking", "yes"),
                config = { no_esc = true }
            }
        end
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            return {
                x_chips = card.ability.extra.x_chips
            }
        end
    end

}
