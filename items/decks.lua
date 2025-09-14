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
                    local card = create_card("Joker", G.jokers, nil, nil, nil, nil, "j_brainrot_sixseven",
                        "brainrot_deck")
                    card:add_to_deck()
                    --card:start_materialize()
                    G.jokers:emplace(card)

                    return true
                end
            end,
        }))
    end,
})
