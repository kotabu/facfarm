-- item group farm
data:extend{
    {
        type = "item-group",
        name = "farm",
        icon = "__my_farm_mod__/images/icons/farm.png",
        icon_size = 128,
        icon_mipmaps = 1,
    },
    {
        type = "item-subgroup",
        name = "farm",
        group = "farm"
    }
}

-- standard item

function item(name,icon,stack_size)
    local r = {
        type = "item",
        subgroup = "farm",
        name = name,
        icon = icon,
        icon_size = 64,
        icon_mipmaps = 4,
        stack_size = stack_size,
        place_result = name
    }

    return r
end

local icons_f = "__my_farm_mod__/images/icons/"

-- carrot
local carrot = item("carrot",icons_f.."carrot.png",10)

data:extend{carrot}

-- seed
local seed = 
{
    type = "item",
    subgroup = "farm",
    name = "seed",
    icon = icons_f.."seed.png",
    icon_size = 64,
    icon_mipmaps = 4,
    stack_size = 100
}

data:extend{seed}

--seed assembly
local seed_a = item("seed_assembly",icons_f.."seed_assembly.png",10)

data:extend{seed_a}

--wind mill
local wind_mill = item("wind_mill",icons_f.."wind_mill.png",10)

data:extend{wind_mill}