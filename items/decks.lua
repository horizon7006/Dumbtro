SMODS.Atlas {
    key = 'tuff_deck',
    path = 'mango.png',
    px = 71,
    py = 95,
}

SMODS.Back({
    key = 'tuff_deck',
    loc_txt = {
        name = 'Tuff Deck',
        text = { 'BOII SO FUCKING TUFF'
        },
    },
    config = { hands = 0, discards = 0 },
    pos = { x = 0, y = 0 },
    order = 1,
    atlas = 'tuff_deck',
    unlocked = true,

    apply = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                if G.consumeables then
                    local card = create_card("Joker", G.jokers, nil, nil, nil, nil, "j_dumb_sixseven",
                        "dumb_deck")
                    card:add_to_deck()
                    --card:start_materialize()
                    G.jokers:emplace(card)

                    return true
                end
            end,
        }))
    end,
})

SMODS.Atlas {
    key = 'useless_deck',
    path = 'sanic.png',
    px = 71,
    py = 95,
}

SMODS.Back({
    key = 'useless_deck',
    loc_txt = {
        name = 'Useless Deck',
        text = { 'its just useless'
        },
    },
    config = { hands = 0, discards = 0 },
    pos = { x = 0, y = 0 },
    order = 1,
    atlas = 'useless_deck',
    unlocked = true,

    apply = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                if G.consumeables then
                    local card = create_card("Joker", G.jokers, nil, nil, nil, nil, "j_dumb_sanic",
                        "dumb_deck")
                    card:add_to_deck()
                    --card:start_materialize()
                    G.jokers:emplace(card)

                    return true
                end
            end,
        }))
    end,
})
