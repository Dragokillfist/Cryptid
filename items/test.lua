local test = {
	object_type = "Joker",
	key = "test",
    gameset_config = {
        modest = {extra = {chips = 1}},
        mainline = {extra = {chips = 10}},
        madness = {extra = {chips = 100}},
    },
	pos = { x = 0, y = 0 },
	rarity = 1,
	order = 11,
	cost = 1,
	blueprint_compat = true,
	atlas = "atlasone",
	loc_vars = function(self, info_queue, center)
		return { vars = { center.ability.extra.chips }, key = "j_cry_test_"..Card.get_gameset(self, center) }
	end,
	calculate = function(self, card, context)
		if context.cardarea == G.jokers and not context.before and not context.after then
			return {
				message = localize({ type = "variable", key = "a_chips", vars = { card.ability.extra.chips } }),
				chip_mod = card.ability.extra.chips,
			}
		end
	end,
	cry_credits = {
		idea = {
			"m"
		},
		art = {
			"m"
		},
		code = {
			"m"
		}
	},
}
return {items = {test}}