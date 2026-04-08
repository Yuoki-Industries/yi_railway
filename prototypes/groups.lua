data:extend({
	--YI-Railways
	{ type = "recipe-category", name = "yir_fuel" }, --category for YIR-Fueltypes

	--Parts Group
	{
		type = "item-group",
		name = "yuoki_railway_parts",
		icon = "__yi_railway__/graphics/icons/yir_fac_cagegory.png",
		icon_size = 80,
		inventory_order = "x",
		order = "yi-a",
	},
	--Vehicle Group
	{
		type = "item-group",
		name = "yuoki_railway",
		icon = "__yi_railway__/graphics/icons/yuoki_railway.png",
		icon_size = 128,
		inventory_order = "y",
		order = "yi-b",
	},

	{ type = "item-subgroup", group = "yuoki_railway_parts", order = "a", name = "yir_workshop" },
	{ type = "item-subgroup", group = "yuoki_railway_parts", order = "b", name = "yir_tiles" },
	{ type = "item-subgroup", group = "yuoki_railway_parts", order = "c", name = "yir_important" },
	{ type = "item-subgroup", group = "yuoki_railway_parts", order = "d", name = "yir_parts" },
	{ type = "item-subgroup", group = "yuoki_railway", order = "e", name = "yir_loco_steam" },
	{ type = "item-subgroup", group = "yuoki_railway", order = "f", name = "yir_loco_diesel1" },
	{ type = "item-subgroup", group = "yuoki_railway", order = "g", name = "yir_loco_diesel2" },
	{ type = "item-subgroup", group = "yuoki_railway", order = "g", name = "yir_loco_diesel3" },
	{ type = "item-subgroup", group = "yuoki_railway", order = "h", name = "yir_loco_future" },

	{ type = "item-subgroup", group = "yuoki_railway", order = "i", name = "yir_cargowagons_small" },
	{ type = "item-subgroup", group = "yuoki_railway", order = "j", name = "yir_cargowagons" },
	{ type = "item-subgroup", group = "yuoki_railway", order = "k", name = "yir_cargo_uranium" },
	{ type = "item-subgroup", group = "yuoki_railway", order = "l", name = "yir_fluidwagons" },

	{ type = "recipe-category", name = "yir_rc_diesel_monument" }, --Diesel Monument
	{ type = "recipe-category", name = "yir_rc_future_monument" }, --Future Monument
	{ type = "recipe-category", name = "yir_rc_material" }, --Factory for Material
	{ type = "recipe-category", name = "yir_rc_stuff" }, --YIR-Coin generation
	{ type = "recipe-category", name = "yir_rc_tiles" }, --Factory for Tiles
	{ type = "recipe-category", name = "yir_rc_wsl" }, --Workshop for Locomotives
	{ type = "recipe-category", name = "yir_rc_wsw" }, --Workshop for Cargo Wagons
})
