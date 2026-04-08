local trainUtil = require("__yi_railway__.prototypes.z_balancing_types")

if settings.startup["yir_vanilla_loco_nerf"].value == true then
	local function adjustStats(name, stat)
		local lok = data.raw["locomotive"][name]

		if not lok then
			return
		end
		for k, v in pairs(trainUtil.balancingTypes.stats1[stat]) do
			lok[k] = v
		end
		for k, v in pairs(trainUtil.balancingTypes.stats2[stat]) do
			lok.energy_source[k] = v
		end
	end

	adjustStats("locomotive", "diesel4")
end
