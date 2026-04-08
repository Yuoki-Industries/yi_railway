data:extend({
	{
		type = "technology",
		name = "yir_railway_basic",
		icon = "__yi_railway__/graphics/icons/railway_tech.png",
		icon_size = 256,
		effects = {
			{
				type = "unlock-recipe",
				recipe = "yir_factory_tiles",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_color_white",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_color_green",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_color_black",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_color_blue",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_color_red",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_lamp_old1",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_lamp_clock",
			},
		},
		research_trigger = {
			type = "craft-item",
			item = "steel-furnace",
			count = 10,
		},
		prerequisites = { "engine", "advanced-material-processing" },
	},
	{
		type = "technology",
		name = "yir_railway_tiles",
		icons = {
			{
				icon = "__yi_railway__/graphics/icons/factories/yir_fac_tiles_icon.png",
				icon_size = 64,
				scale = 1.5,
				shift = { 0, -8 },
				draw_background = true,
			},
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "y_tgb",
			},
			{
				type = "unlock-recipe",
				recipe = "y_tring",
			},
			{
				type = "unlock-recipe",
				recipe = "y_path_checker",
			},
			{
				type = "unlock-recipe",
				recipe = "y_path_science",
			},
			{
				type = "unlock-recipe",
				recipe = "y_path_labor",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_grating_tile",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_brick1_tile",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_brick2_tile",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_muster1_tile",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_metal2_tile",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_metal3_tile",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_metal4_tile",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_stony_tile",
			},
		},
		research_trigger = {
			type = "craft-item",
			item = "yir_factory_tiles",
			count = 1,
		},
		prerequisites = { "yir_railway_basic" },
	},
	{
		type = "technology",
		name = "yir_railway_steam",
		icons = {
			{
				icon = "__yi_railway__/graphics/icons/railway_tech.png",
				icon_size = 256,
			},
			{
				icon = "__base__/graphics/icons/fluid/steam.png",
				icon_size = 64,
				scale = 1.5,
				shift = { 0, -5 },
				draw_background = true,
			},
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "yir_factory_stuff",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_coin",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_factory_material",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_factory_loco",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_fuel_coks",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_frame_loco_steam",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_radsatz_locos",
			},
			{
				type = "unlock-recipe",
				recipe = "y_loco_ses_red",
			},
			{
				type = "unlock-recipe",
				recipe = "y_loco_ses_std",
			},
		},
		research_trigger = {
			type = "craft-item",
			item = "locomotive",
			count = 5,
		},
		prerequisites = { "oil-processing", "railway", "yir_railway_basic" },
	},
	{
		type = "technology",
		name = "yir_railway_steam_better",
		icons = {
			{
				icon = "__yi_railway__/graphics/icons/railway_tech.png",
				icon_size = 256,
			},
			{
				icon = "__base__/graphics/icons/fluid/steam.png",
				icon_size = 64,
				scale = 1.5,
				shift = { 0, -5 },
				draw_background = true,
			},
			{
				icon = "__base__/graphics/icons/arrows/up-arrow.png",
				icon_size = 64,
				scale = 1,
				shift = { 0, -8 },
				draw_background = true,
				tint = { r = 0, g = 0.776, b = 0.34, a = 1 },
			},
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "y_loco_steam_wt450",
			},
			{
				type = "unlock-recipe",
				recipe = "y_wagon_tender_black",
			},
			{
				type = "unlock-recipe",
				recipe = "y_loco_fs_steam_green",
			},
			{
				type = "unlock-recipe",
				recipe = "y_wagon_tender_green",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_loco_sel_blue",
			},
		},
		research_trigger = {
			type = "craft-item",
			item = "yir_frame_loco_steam",
			count = 50,
		},
		prerequisites = { "yir_railway_steam" },
	},
	{
		type = "technology",
		name = "yir_railway_wagon",
		icons = {
			{
				icon = "__yi_railway__/graphics/icons/frame_wagon.png",
				icon_size = 64,
				scale = 1.5,
				shift = { 0, -8 },
				draw_background = true,
			},
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "yir_factory_wagon",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_frame_waggon",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_radsatz_waggon",
			},

			{
				type = "unlock-recipe",
				recipe = "y_wagon_coal",
			},
			{
				type = "unlock-recipe",
				recipe = "y_wagon_stone",
			},
			{
				type = "unlock-recipe",
				recipe = "y_wagon_iron",
			},
			{
				type = "unlock-recipe",
				recipe = "y_wagon_copper",
			},
			{
				type = "unlock-recipe",
				recipe = "y_wagon_trans",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_2acw_wood",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_2acw_3blocks",
			},
			{
				type = "unlock-recipe",
				recipe = "y_wagon_hopper_yellow",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_wagon2a_closed",
			},
			{
				type = "unlock-recipe",
				recipe = "y_wagon_corn_blue",
			},
			{
				type = "unlock-recipe",
				recipe = "y_wagon_corn_green",
			},
			{
				type = "unlock-recipe",
				recipe = "y_wagon_zement_white",
			},
			{
				type = "unlock-recipe",
				recipe = "y_wagon_zement_gray",
			},

			{
				type = "unlock-recipe",
				recipe = "y_wagon_tank_fm1",
			},
			{
				type = "unlock-recipe",
				recipe = "y_wagon_tank_fm2",
			},
		},
		research_trigger = {
			type = "craft-item",
			item = "cargo-wagon",
			count = 5,
		},
		prerequisites = { "yir_railway_steam" },
	},

	{
		type = "technology",
		name = "yir_railway_diesel",
		icons = {
			{
				icon = "__yi_railway__/graphics/icons/railway_tech.png",
				icon_size = 256,
			},
			{
				icon = "__base__/graphics/icons/fluid/light-oil.png",
				icon_size = 64,
				scale = 1.5,
				shift = { 0, -16 },
				draw_background = true,
			},
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "yir_diesel_monument",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_diesel_coin",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_frame_loco_diesel",
			},

			{
				type = "unlock-recipe",
				recipe = "yir_factory_chemical",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_fuel_diesel",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_fuel_fluid_u1",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_fuel_fluid_u2",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_fuel_fluid_u3",
			},

			{
				type = "unlock-recipe",
				recipe = "y_loco_desw_orange",
			},
			{
				type = "unlock-recipe",
				recipe = "y_loco_desw_blue",
			},
			{
				type = "unlock-recipe",
				recipe = "y_loco_desw",
			},
			{
				type = "unlock-recipe",
				recipe = "y_loco_emd1500black_v2",
			},
			{
				type = "unlock-recipe",
				recipe = "y_loco_emd1500blue_v2",
			},
			{
				type = "unlock-recipe",
				recipe = "y_loco_emd1500black",
			},
			{
				type = "unlock-recipe",
				recipe = "y_loco_emd1500blue",
			},
		},
		research_trigger = {
			type = "craft-fluid",
			fluid = "light-oil",
			amount = 1000,
		},
		prerequisites = { "yir_railway_steam_better", "advanced-oil-processing" },
	},

	{
		type = "technology",
		name = "yir_railway_diesel_better",
		icons = {
			{
				icon = "__yi_railway__/graphics/icons/railway_tech.png",
				icon_size = 256,
			},
			{
				icon = "__base__/graphics/icons/fluid/light-oil.png",
				icon_size = 64,
				scale = 1.5,
				shift = { 0, -16 },
				draw_background = true,
			},
			{
				icon = "__base__/graphics/icons/arrows/up-arrow.png",
				icon_size = 64,
				scale = 1,
				draw_background = true,
				tint = { r = 0, g = 0.776, b = 0.34, a = 1 },
			},
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "yir_loco_del_KR",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_loco_del_mk1400",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_loco_de_bluegray",
			},
			{
				type = "unlock-recipe",
				recipe = "y_loco_emd3000_white",
			},
		},
		research_trigger = {
			type = "craft-item",
			item = "yir_frame_loco_diesel",
			count = 50,
		},
		prerequisites = { "yir_railway_diesel" },
	},
	{
		type = "technology",
		name = "yir_railway_wagon_better",
		icons = {
			{
				icon = "__yi_railway__/graphics/icons/frame_wagon.png",
				icon_size = 64,
				scale = 1.5,
				shift = { 0, -8 },
				draw_background = true,
			},
			{
				icon = "__base__/graphics/icons/arrows/up-arrow.png",
				icon_size = 64,
				scale = 1,
				draw_background = true,
				tint = { r = 0, g = 0.776, b = 0.34, a = 1 },
			},
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "yir_4acw_coal",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_4acw_stone",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_4acw_iron",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_4acw_copper",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_4acw_mun",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_4acw_wood",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_4acw_tf",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_4acw_gold",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_4acw_closed",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_4acw_grey",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_4acw_oceanblue",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_wagon_tank_orange",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_wagon_tank_blue",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_fw4a_tank_oil",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_wagon_tank_orange_small",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_wagon_tank_blue_small",
			},
		},
		research_trigger = {
			type = "craft-item",
			item = "yir_frame_waggon",
			count = 50,
		},
		prerequisites = { "yir_railway_wagon", "yir_railway_diesel" },
	},

	{
		type = "technology",
		name = "yir_railway_future",
		icons = {
			{
				icon = "__yi_railway__/graphics/icons/railway_tech.png",
				icon_size = 256,
			},
			{
				icon = "__yi_railway__/graphics/icons/fuel_energy.png",
				icon_size = 64,
				scale = 1.5,
				shift = { 0, -16 },
				draw_background = true,
			},
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "yir_future_monument",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_future_coin",
			},

			{
				type = "unlock-recipe",
				recipe = "yir_fuel_energy_u1",
			},

			{
				type = "unlock-recipe",
				recipe = "yir_frame_loco_future",
			},

			{
				type = "unlock-recipe",
				recipe = "yir_loco_fesw_op",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_loco_fut_red",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_lamp_modern",
			},
		},
		research_trigger = {
			type = "craft-item",
			item = "utility-science-pack",
			count = 1,
		},
		prerequisites = { "yir_railway_diesel_better", "utility-science-pack" },
	},
	{
		type = "technology",
		name = "yir_railway_wagon_future",
		icons = {
			{
				icon = "__yi_railway__/graphics/icons/frame_wagon.png",
				icon_size = 64,
				scale = 1.5,
				shift = { 0, -8 },
				draw_background = true,
			},
			{
				icon = "__base__/graphics/icons/arrows/up-arrow.png",
				icon_size = 64,
				scale = 1,
				shift = { 0, -22 },
				draw_background = true,
				tint = { r = 0, g = 0.776, b = 0.34, a = 1 },
			},
			{
				icon = "__base__/graphics/icons/arrows/up-arrow.png",
				icon_size = 64,
				scale = 1,
				shift = { 0, 10 },
				draw_background = true,
				tint = { r = 0, g = 0.776, b = 0.34, a = 1 },
			},
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "yir_4acw_vc",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_fw4_vc",
			},
			{
				type = "unlock-recipe",
				recipe = "yir_4acw_purple",
			},
		},
		research_trigger = {
			type = "craft-item",
			item = "yir_frame_waggon",
			count = 100,
		},
		prerequisites = { "yir_railway_wagon_better", "yir_railway_future" },
	},
})
--[[
basic components?
- tile maker
- parts maker
- colors

steam components
- monument
- locomotive maker
- wagon maker
- coks
- steam loks
- wagons

diesel components
- monument
- diesel loks
- diesel

future components
- monument
- future loks
- future lamp
- e fuel
]]
