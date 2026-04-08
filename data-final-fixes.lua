--entity_name = recipe name

entities = {
	y_wagon_coal = "y_wagon_coal",
	y_wagon_stone = "y_wagon_stone",
	y_wagon_iron = "y_wagon_iron",
	y_wagon_copper = "y_wagon_copper",
	y_wagon_trans = "y_wagon_trans",
	yir_2acw_wood = "yir_2acw_wood",
	yir_2acw_3blocks = "yir_2acw_3blocks",
	y_wagon_hopper_yellow = "y_wagon_hopper_yellow",
	yir_wagon2a_closed = "yir_wagon2a_closed",
	y_wagon_corn_blue = "y_wagon_corn_blue",
	y_wagon_corn_green = "y_wagon_corn_green",
	y_wagon_zement_white = "y_wagon_zement_white",
	y_wagon_zement_gray = "y_wagon_zement_gray",
	y_wagon_tender_green = "y_wagon_tender_green",
	y_wagon_tender_black = "y_wagon_tender_black",
	yir_4acw_coal = "yir_4acw_coal",
	yir_4acw_stone = "yir_4acw_stone",
	yir_4acw_iron = "yir_4acw_iron",
	yir_4acw_copper = "yir_4acw_copper",
	yir_4acw_mun = "yir_4acw_mun",
	yir_4acw_wood = "yir_4acw_wood",
	yir_4acw_tf = "yir_4acw_tf",
	yir_4acw_gold = "yir_4acw_gold",
	yir_4acw_closed = "yir_4acw_closed",
	yir_4acw_purple = "yir_4acw_purple",
	yir_4acw_vc = "yir_4acw_vc",
	yir_4acw_grey = "yir_4acw_grey",
	yir_4acw_oceanblue = "yir_4acw_oceanblue",
	yir_fw4_vc = "yir_fw4_vc",
	y_wagon_tank_fm1 = "y_wagon_tank_fm1",
	y_wagon_tank_fm2 = "y_wagon_tank_fm2",
	yir_wagon_tank_orange = "yir_wagon_tank_orange",
	yir_wagon_tank_blue = "yir_wagon_tank_blue",
	yir_fw4a_tank_oil = "yir_fw4a_tank_oil",
	yir_wagon_tank_orange_small = "yir_wagon_tank_orange_small",
	yir_wagon_tank_blue_small = "yir_wagon_tank_blue_small",
	yir_loco_del_KR = "yir_loco_del_KR",
	yir_loco_del_mk1400 = "yir_loco_del_mk1400",
	yir_loco_de_bluegray = "yir_loco_de_bluegray",
	yir_loco_sel_blue = "yir_loco_sel_blue",
	y_loco_fs_steam_green = "y_loco_fs_steam_green",
	y_loco_emd3000_white = "y_loco_emd3000_white",
	y_loco_steam_wt450 = "y_loco_steam_wt450",
	yir_loco_fut_red = "yir_loco_fut_red",
	yir_loco_fesw_op = "yir_loco_fesw_op",
	y_loco_emd1500black_v2 = "y_loco_emd1500black_v2",
	y_loco_emd1500blue_v2 = "y_loco_emd1500blue_v2",
	y_loco_emd1500black = "y_loco_emd1500black",
	y_loco_emd1500blue = "y_loco_emd1500blue",
	y_loco_desw_orange = "y_loco_desw_orange",
	y_loco_desw_blue = "y_loco_desw_blue",
	y_loco_ses_std = "y_loco_ses_std",
	y_loco_ses_red = "y_loco_ses_red",
	y_loco_desw = "y_loco_desw",
}

local function IngredientInList(name, recipe)
	if entities[name] and entities[recipe] == nil and recipe ~= name .. "-recycling" then
		--log("removing " .. name)
		entities[name] = nil
	end
end

if settings.startup["yir_disable_content"].value == true then
	--log("we going in")
	for name, recipe in pairs(data.raw["recipe"]) do
		--log("checking "..recipe.name)
		if recipe.ingredients ~= nil then
			for _, ingredient in pairs(recipe.ingredients) do
				--log("ingredient "..ingredient.name)
				IngredientInList(ingredient.name, name)
			end
		end
	end

	for entity, recipe in pairs(entities) do
		log("Deleting " .. entity)

		data.raw["item"][entity] = nil
		data.raw["item-with-entity-data"][entity] = nil
		data.raw["recipe"][recipe] = nil
		data.raw["recipe"][recipe .. "-recycling"] = nil
		data.raw["locomotive"][entity] = nil
		data.raw["fluid-wagon"][entity] = nil
		data.raw["cargo-wagon"][entity] = nil

		for _, tech in pairs(data.raw["technology"]) do
			relevant = false
			if tech.effects ~= nil then
				for i = #tech.effects, 1, -1 do
					if tech.effects[i].recipe == recipe then
						relevant = true
						table.remove(tech.effects, i)
					end
				end
			end
			if relevant == true then
				--log(serpent.block(tech))
			end
		end
	end
end
