functions = require("lib.functions")

data:extend({
	{
		type = "locomotive",
		name = "yir_loco_fut_red",
		icon = "__yi_railway__/graphics/icons/railway/future_red_icon.png",
		icon_size = 64,
		max_health = 1200,
		collision_box = { { -0.6, -2.6 }, { 0.6, 2.6 } },
		selection_box = { { -1, -3 }, { 1, 3 } },
		drawing_box = { { -1, -4 }, { 1, 3 } },
		connection_distance = 3,
		joint_distance = 4,
		weight = 2000,
		max_speed = 2.50,
		max_power = "3000kW",
		reversing_power_modifier = 0.6,
		braking_force = 10,
		friction_force = 0.275,
		air_resistance = 0.00275,
		vertical_selection_shift = -0.5,
		energy_per_hit_point = 25,
		resistances = { { type = "impact", decrease = 50, percent = 60 } },
		energy_source = {
			type = "burner",
			fuel_categories = { "yr_future" },
			effectivity = 1,
			fuel_inventory_size = 3,
		},
		front_light = {
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture = {
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200,
				},
				shift = { -0.6, -16 },
				size = 2,
				intensity = 0.6,
			},
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture = {
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200,
				},
				shift = { 0.6, -16 },
				size = 2,
				intensity = 0.6,
			},
		},
		stop_trigger = {
			-- left side
			{
				type = "create-trivial-smoke",
				repeat_count = 75,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the left
				speed = { -0.03, 0 },
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = { { -0.75, -2.7 }, { -0.3, 2.7 } },
			},
			-- right side
			{
				type = "create-trivial-smoke",
				repeat_count = 75,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the right
				speed = { 0.03, 0 },
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = { { 0.3, -2.7 }, { 0.75, 2.7 } },
			},
			{
				type = "play-sound",
				sound = {
					{
						filename = "__base__/sound/train-breaks.ogg",
						volume = 0.6,
					},
				},
			},
		},
	},

	{
		type = "locomotive",
		name = "yir_loco_fesw_op",
		icon = "__yi_railway__/graphics/icons/railway/DESW90-OP-icon.png",
		icon_size = 64,
		max_health = 650,
		collision_box = { { -0.6, -1.2 }, { 0.6, 1.2 } },
		selection_box = { { -0.9, -2 }, { 0.9, 2 } },
		drawing_box = { { -1, -1 }, { 1, 1 } },
		weight = 1500,
		max_speed = 0.6,
		max_power = "450kW",
		reversing_power_modifier = 0.8,
		braking_force = 10,
		friction_force = 0.0026,
		air_resistance = 0.003,
		vertical_selection_shift = -0.5,
		connection_distance = 4,
		joint_distance = 2,
		energy_per_hit_point = 5,
		resistances = {
			{ type = "fire", decrease = 15, percent = 50 },
			{ type = "physical", decrease = 15, percent = 30 },
			{ type = "impact", decrease = 50, percent = 60 },
			{ type = "explosion", decrease = 15, percent = 30 },
			{ type = "acid", decrease = 10, percent = 20 },
		},
		energy_source = {
			type = "burner",
			fuel_categories = { "yr_future" },
			effectivity = 1,
			fuel_inventory_size = 3,
		},
		front_light = {
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture = {
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200,
				},
				shift = { -0.6, -16 },
				size = 2,
				intensity = 0.8,
			},
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture = {
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200,
				},
				shift = { 0.6, -16 },
				size = 2,
				intensity = 0.8,
			},
		},
		stop_trigger = {
			-- left side
			{
				type = "create-trivial-smoke",
				repeat_count = 75,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the left
				speed = { -0.03, 0 },
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = { { -0.75, -2.7 }, { -0.3, 2.7 } },
			},
			-- right side
			{
				type = "create-trivial-smoke",
				repeat_count = 75,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the right
				speed = { 0.03, 0 },
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = { { 0.3, -2.7 }, { 0.75, 2.7 } },
			},
			{
				type = "play-sound",
				sound = {
					{
						filename = "__base__/sound/train-breaks.ogg",
						volume = 0.6,
					},
				},
			},
		},
	},
})
