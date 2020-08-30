-- carrot
data:extend({
	{
		type = "simple-entity",
		name = "carrot",
		order = "Farm",
		icon = "__my_farm_mod__/images/icons/carrot.png",
		picture = {
			filename="__my_farm_mod__/images/entity/carrot.png",
			scale=0.5,
			width=128,
			height=140
		},
		icon_size = 64,
		max_health = 250,
		-- flags = {"placeable-player","player-creation","breaths-air","not-repairable"},
		collision_box = {{-0.2, -0.2}, {0.6, 0.6}},
		selection_box = {{-1, -1}, {1, 1}},
		minable = {
			mining_time=0.1,
			result="carrot",
			mining_particle="wooden-particle",
			count=1
		},
		emissions_per_second = -0.00005
	},
})

-- wood in seed

function ressourceItemMinMaxProb(itemName, amountMin, amountMax, probability)
	return {
		type = "item",
		name = itemName,
		amount_min = amountMin,
		amount_max = amountMax,
		probability = probability
}
end

local tr = {
	ressourceItemMinMaxProb("wood", 1, 5 ,1),
	ressourceItemMinMaxProb("seed", 1, 5, 1)
}

data.raw["tree"]["tree-01"].minable.results = tr
data.raw["tree"]["tree-02"].minable.results = tr
data.raw["tree"]["tree-02-red"].minable.results = tr
data.raw["tree"]["tree-03"].minable.results = tr
data.raw["tree"]["tree-04"].minable.results = tr
data.raw["tree"]["tree-05"].minable.results = tr
data.raw["tree"]["tree-06"].minable.results = tr
data.raw["tree"]["tree-06-brown"].minable.results = tr
data.raw["tree"]["tree-07"].minable.results = tr
data.raw["tree"]["tree-08"].minable.results = tr
data.raw["tree"]["tree-08-brown"].minable.results = tr
data.raw["tree"]["tree-08-red"].minable.results = tr
data.raw["tree"]["tree-09"].minable.results = tr
data.raw["tree"]["tree-09-brown"].minable.results = tr
data.raw["tree"]["tree-09-red"].minable.results = tr

-- seed-assembler

local seed_a ={
	type = "assembling-machine",
	name = "seed_assembly",
	crafting_categories = {"farm"},
	crafting_speed = 1,
	corpse = "big-remnants",
	energy_source = {
		type = "electric",
		emissions_per_minute = 2,
		usage_priority = "secondary-input"
	},
	energy_usage = "30kW",
	icon = "__my_farm_mod__/images/icons/seed_assembly.png",
	icon_size = 64,
	icon_mipmaps = 4,
	animation = {
		filename = "__my_farm_mod__/images/entity/seed_assembler_on.png",
		width = 380,
		height = 380,
		scale = 0.45,
		frame_count = 1
	},
	idle_animation = {
		filename = "__my_farm_mod__/images/entity/seed_assembler_off.png",
		width = 380,
		height = 380,
		scale = 0.45,
		frame_count = 1
	},
	minable = {
    	mining_time = 0.2,
    	result = "seed_assembly"
	},
	collision_box = {
	{
	  -2.2,
	  -2.0
	},
	{
	  2.2,
	  2.2
	}
  	},
	selection_box = {
        {
          -1.5,
          -1.5
        },
        {
			1.5,
			1.5
		}
	},
	fluid_boxes = {{
		production_type = "input",
	  	pipe_connections = {
		{
		  position = {
			0,
			3.0
		  },
		  type = "input"
		}
	  }},
	 off_when_no_fluid_recipe = true	
	},
	next_upgrade = "",
	emissions_per_second = 0.00001,
	flags ={"not-rotatable"}
}
data:extend{seed_a}

-- wind mill

local wind_mill = {
    type = "electric-energy-interface",
    name = "wind_mill",
    energy_source = {
		type = "electric",
		render_no_power_icon = false,
		buffer_capacity = "1YW",
		output_flow_limit = "50kW",
		usage_priority = "secondary-output"
		},
	animation = {
        filename = "__my_farm_mod__/images/entity/wind_mill.png",
		width = 360,
		height = 270,
        scale = 0.6,
        frame_count = 12,
        line_length = 4,
		animation_speed = 0.5
	},
	continuous_animation = true,
	energy_production = "50kW",
	energy_usage = "0kW",
    corpse = "big-remnants",
    icon = "__my_farm_mod__/images/icons/wind_mill.png",
    icon_size = 64,
	icon_mipmaps = 4,
	gui_mode = "none",
	collision_box = {
	{
		-2.2,
		-2.2
	},
    {
        2.2,
        2.2
    }},
	selection_box = {
		{-1.5,-1.5},
		{1.5,1.5}
	},
	minable = {
		mining_time = 1,
		result = "wind_mill"
	}
}

data:extend{wind_mill}