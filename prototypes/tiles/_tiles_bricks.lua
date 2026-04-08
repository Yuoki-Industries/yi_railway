local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")

data:extend({
	{
		type = "tile",
		name = "yir_brick1_tile",
		needs_correction = false,
		minable = { hardness = 0.2, mining_time = 0.5, result = "yir_brick1_tile" },
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		collision_mask = tile_collision_masks.ground(),
		walking_speed_modifier = 1.4,
		layer = 59,
		decorative_removal_probability = 1.0,
		variants = {
			main = {
				{
					picture = "__yi_railway__/graphics/path_tiles/bricks_1.png",
					count = 1,
					size = 1,
				},
			},
			transition = {
				overlay_layout = {
					inner_corner = {
						spritesheet = "__yi_railway__/graphics/path_tiles/concrete-inner-corner.png",
						count = 8,
					},
					outer_corner = {
						spritesheet = "__yi_railway__/graphics/path_tiles/concrete-outer-corner.png",
						count = 8,
					},
					side = {
						spritesheet = "__yi_railway__/graphics/path_tiles/concrete-side.png",
						count = 8,
					},
					u_transition = {
						spritesheet = "__yi_railway__/graphics/path_tiles/concrete-u.png",
						count = 8,
					},
					o_transition = {
						spritesheet = "__yi_railway__/graphics/path_tiles/concrete-o.png",
						count = 1,
					},
				},
			},
		},

		map_color = { r = 90, g = 70, b = 50 },
		ageing = 0,
		walking_sound = concrete_sounds,
		vehicle_friction_modifier = stone_path_vehicle_speed_modifier,
	},

	{
		type = "tile",
		name = "yir_brick2_tile",
		needs_correction = false,
		minable = { hardness = 0.2, mining_time = 0.5, result = "yir_brick2_tile" },
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		collision_mask = tile_collision_masks.ground(),
		walking_speed_modifier = 1.4,
		layer = 59,
		decorative_removal_probability = 1.0,
		variants = {
			main = {
				{
					picture = "__yi_railway__/graphics/path_tiles/bricks_2.png",
					count = 1,
					size = 1,
				},
			},
			transition = {
				overlay_layout = {
					inner_corner = {
						spritesheet = "__yi_railway__/graphics/path_tiles/concrete-inner-corner.png",
						count = 8,
					},
					outer_corner = {
						spritesheet = "__yi_railway__/graphics/path_tiles/concrete-outer-corner.png",
						count = 8,
					},
					side = {
						spritesheet = "__yi_railway__/graphics/path_tiles/concrete-side.png",
						count = 8,
					},
					u_transition = {
						spritesheet = "__yi_railway__/graphics/path_tiles/concrete-u.png",
						count = 8,
					},
					o_transition = {
						spritesheet = "__yi_railway__/graphics/path_tiles/concrete-o.png",
						count = 1,
					},
				},
			},
		},
		walking_sound = concrete_sounds,
		map_color = { r = 90, g = 70, b = 50 },
		ageing = 0,
		vehicle_friction_modifier = stone_path_vehicle_speed_modifier,
	},
})
