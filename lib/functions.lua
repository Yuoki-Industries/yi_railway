local functions = {
	yir_drive_over_tie = {
		type = "play-sound",
		sound = sound_variations(
			"__base__/sound/train-tie",
			6,
			0.4,
			{ volume_multiplier("main-menu", 2.4), volume_multiplier("driving", 1.3) }
		),
	},

	standard_train_wheels = {
		rotated = util.sprite_load("__base__/graphics/entity/train-wheel/train-wheel", {
			priority = "very-low",
			direction_count = 256,
			scale = 0.5,
			shift = util.by_pixel(0, 8),
			usage = "train",
		}),
	},
}

return functions
