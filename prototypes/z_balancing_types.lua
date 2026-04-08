local vanillaResistance = data.raw["cargo-wagon"]["cargo-wagon"].resistances
local item_sounds = require("__base__.prototypes.item_sounds")
local sounds = require("__base__.prototypes.entity.sounds")

local resistance1 = {
	{
		type = "fire",
		decrease = 25,
		percent = 50,
	},
	{
		type = "physical",
		decrease = 10,
		percent = 25,
	},
	{
		type = "impact",
		decrease = 30,
		percent = 50,
	},
	{
		type = "explosion",
		decrease = 20,
		percent = 35,
	},
	{
		type = "acid",
		decrease = 10,
		percent = 30,
	},
	{
		type = "laser",
		decrease = 20,
		percent = 45,
	},
	{
		type = "electric",
		decrease = 20,
		percent = 45,
	},
}
local resistance2 = {
	{
		type = "fire",
		decrease = 15,
		percent = 50,
	},
	{
		type = "physical",
		decrease = 15,
		percent = 30,
	},
	{
		type = "impact",
		decrease = 50,
		percent = 50,
	},
	{
		type = "explosion",
		decrease = 15,
		percent = 30,
	},
	{
		type = "acid",
		decrease = 3,
		percent = 20,
	},
	{
		type = "laser",
		decrease = 10,
		percent = 20,
	},
	{
		type = "electric",
		decrease = 5,
		percent = 20,
	},
}
local resistance3 = {
	{
		type = "fire",
		decrease = 25,
		percent = 50,
	},
	{
		type = "physical",
		decrease = 25,
		percent = 35,
	},
	{
		type = "impact",
		decrease = 75,
		percent = 65,
	},
	{
		type = "explosion",
		decrease = 25,
		percent = 40,
	},
	{
		type = "acid",
		decrease = 10,
		percent = 30,
	},
	{
		type = "laser",
		decrease = 15,
		percent = 25,
	},
	{
		type = "electric",
		decrease = 10,
		percent = 20,
	},
}
local resistanceU = {
	{
		type = "fire",
		decrease = 25,
		percent = 100,
	},
	{
		type = "physical",
		decrease = 40,
		percent = 35,
	},
	{
		type = "impact",
		decrease = 100,
		percent = 65,
	},
	{
		type = "explosion",
		decrease = 50,
		percent = 60,
	},
	{
		type = "acid",
		decrease = 20,
		percent = 45,
	},
	{
		type = "laser",
		decrease = 25,
		percent = 30,
	},
	{
		type = "electric",
		decrease = 25,
		percent = 25,
	},
}
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

local workingSoundDiesel = data.raw["locomotive"]["locomotive"].working_sound
local workingSoundSteam = table.deepcopy(data.raw["locomotive"]["locomotive"].working_sound)
workingSoundSteam.main_sounds[2].sound.filename = "__base__/sound/steam-engine-90bpm.ogg"
workingSoundSteam.main_sounds[2].sound.volume = 0.5

local workingSoundAtom = table.deepcopy(data.raw["locomotive"]["locomotive"].working_sound)
workingSoundAtom.main_sounds[2].sound.filename = "__z_yira_UP__/sound/nuclear_engine_smooth.ogg"
workingSoundAtom.main_sounds[2].sound.volume = 0.5

local function filenameGen(name, count, shadow, modname)
	local names = {}
	local sh = ""
	local suffix = ""
	if shadow ~= nil and shadow == true then
		sh = "_shadow"
	end
	if modname == "yi_railway" then
		suffix = "entity/railway/"
	end
	if count == 1 then
		table.insert(names, "__" .. modname .. "__/graphics/" .. suffix .. name .. sh .. ".png")
	else
		for i = 0, count - 1, 1 do
			table.insert(names, "__" .. modname .. "__/graphics/" .. suffix .. name .. (i + 1) .. sh .. ".png")
		end
	end
	return names
end

local function makePictures(data, modname)
	local width = 8
	local height = 8
	local dc = 128
	if data.double == true then
		height = 16
	end
	if data.doublesided == true then
		dc = 64
	end

	local pictures = {
		rotated = {
			layers = {
				{
					width = data.size[1] / width,
					height = data.size[2] / height,
					direction_count = dc,
					filenames = filenameGen(data.filename, 1, nil, modname),
					back_equals_front = data.doublesided,
					line_length = width,
					lines_per_file = height,
					shift = data.shift,
					scale = 0.5,
				},
				{
					width = data.sizeSh[1] / width,
					height = data.sizeSh[2] / height,
					direction_count = dc,
					filenames = filenameGen(data.filename, 1, true, modname),
					back_equals_front = data.doublesided,
					line_length = width,
					lines_per_file = height,
					shift = data.shift,
					draw_as_shadow = true,
					scale = 0.5,
				},
			},
		},
	}
	return pictures
end

local util = {
	entitySetup = function(entityData)
		for vType, typeData in pairs(entityData) do
			if type(typeData) ~= "table" then
				goto continue
			end
			for name, datas in pairs(typeData) do
				local vehicle = data.raw[vType][name]
				local item = data.raw["item"][name]

				if vehicle ~= nil then
					vehicle.crash_trigger = functions.crash_trigger
					vehicle.drive_over_tie_trigger = functions.yir_drive_over_tie
					vehicle.pictures = makePictures(datas, entityData.modname)
					vehicle.minimap_representation = data.raw[vType][vType].minimap_representation
					vehicle.selected_minimap_representation = data.raw[vType][vType].selected_minimap_representation
					vehicle.open_sound = data.raw[vType][vType].open_sound
					vehicle.close_sound = data.raw[vType][vType].close_sound
					vehicle.tie_distance = 50
					vehicle.corpse = "medium-remnants"
					vehicle.dying_explosion = "medium-explosion"
					vehicle.minable = { mining_time = 0.5, result = name }
					vehicle.mined_sound = { filename = "__core__/sound/deconstruct-medium.ogg" }
					vehicle.flags = { "placeable-neutral", "player-creation", "placeable-off-grid" }
					if vType == "locomotive" then
						vehicle.max_health = 0.5 * vehicle.weight
						vehicle.stop_trigger = data.raw[vType][vType].stop_trigger
					else
						vehicle.resistances = vanillaResistance
						vehicle.working_sound = sounds.train_wagon_wheels
					end
				end

				if item ~= nil then
					item.inventory_move_sound = data.raw["item-with-entity-data"][vType].inventory_move_sound
					item.pick_sound = data.raw["item-with-entity-data"][vType].pick_sound
					item.drop_sound = data.raw["item-with-entity-data"][vType].drop_sound
				end

				--log(name.." changed")
			end
			::continue::
		end
	end,
	itemSetup = function(itemData, types)
		for type, items in pairs(itemData) do
			for _, name in pairs(items) do
				local item = data.raw["item-with-entity-data"][name]

				if item ~= nil then
					item.inventory_move_sound = item_sounds[types[type] .. "_inventory_move"]
					item.pick_sound = item_sounds[types[type] .. "_inventory_pickup"]
					item.drop_sound = item_sounds[types[type] .. "_inventory_move"]
				end
			end
		end
	end,
	balancingTypes = {
		stats1 = {
			steam1 = {
				resistances = resistance1,
				max_speed = 0.5,
				max_power = "300kW",
				braking_force = 2,
				friction_force = 0.0075,
				air_resistance = 0.008,
				energy_per_hit_point = 10,
				reversing_power_modifier = 0.4,
				working_sound = workingSoundSteam,
			},
			steam2 = {
				resistances = resistance1,
				max_speed = 0.6,
				max_power = "500kW",
				braking_force = 5,
				friction_force = 0.0065,
				air_resistance = 0.0075,
				energy_per_hit_point = 9,
				reversing_power_modifier = 0.5,
				working_sound = workingSoundSteam,
			},
			steam3 = {
				resistances = resistance1,
				max_speed = 0.8,
				max_power = "750kW",
				braking_force = 8,
				friction_force = 0.0055,
				air_resistance = 0.005,
				energy_per_hit_point = 8,
				reversing_power_modifier = 0.6,
				working_sound = workingSoundSteam,
			},
			diesel1 = {
				resistances = resistance2,
				max_speed = 0.4,
				max_power = "300kW",
				braking_force = 4,
				friction_force = 0.0050,
				air_resistance = 0.01,
				energy_per_hit_point = 6,
				reversing_power_modifier = 1,
				working_sound = workingSoundDiesel,
			},
			diesel2 = {
				resistances = resistance2,
				max_speed = 0.5,
				max_power = "500kW",
				braking_force = 4,
				friction_force = 0.0045,
				air_resistance = 0.0075,
				energy_per_hit_point = 6,
				reversing_power_modifier = 0.9,
				working_sound = workingSoundDiesel,
			},
			diesel3 = {
				resistances = resistance2,
				max_speed = 0.8,
				max_power = "800kW",
				braking_force = 12,
				friction_force = 0.0040,
				air_resistance = 0.006,
				energy_per_hit_point = 6,
				reversing_power_modifier = 0.8,
				working_sound = workingSoundDiesel,
			},
			diesel4 = {
				resistances = resistance2,
				max_speed = 0.9,
				max_power = "900kW",
				braking_force = 12,
				friction_force = 0.0040,
				air_resistance = 0.005,
				energy_per_hit_point = 6,
				reversing_power_modifier = 0.6,
				working_sound = workingSoundDiesel,
			},
			future = {
				resistances = resistance3,
				max_speed = 2.0,
				max_power = "2000kW",
				braking_force = 20,
				friction_force = 0.0025,
				air_resistance = 0.006,
				energy_per_hit_point = 4,
				reversing_power_modifier = 1,
				working_sound = workingSoundDiesel,
			},
			futureU = {
				resistances = resistanceU,
				max_speed = 1.85185,
				max_power = "5000kW",
				braking_force = 30,
				friction_force = 0.1,
				air_resistance = 0.01,
				energy_per_hit_point = 3,
				reversing_power_modifier = 1,
				working_sound = workingSoundAtom,
			},
		},
		stats2 = {
			steam1 = { fuel_inventory_size = 1, effectivity = 0.6 },
			steam2 = { fuel_inventory_size = 3, effectivity = 0.7 },
			steam3 = { fuel_inventory_size = 2, effectivity = 0.75 },
			diesel1 = { fuel_inventory_size = 1, effectivity = 0.8 },
			diesel2 = { fuel_inventory_size = 2, effectivity = 0.85 },
			diesel3 = { fuel_inventory_size = 3, effectivity = 0.90 },
			diesel4 = { fuel_inventory_size = 3, effectivity = 0.90 },
			future = { fuel_inventory_size = 1, effectivity = 1 },
			futureU = { fuel_inventory_size = 1, effectivity = 0.1 },
		},
	},
}

return util
