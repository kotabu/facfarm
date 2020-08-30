data:extend({
{
    type="recipe-category",
    name="farm"
},
{
   type = "recipe",
   name = "carrot",
   enabled = "true",
   energy_required = 30,
   ingredients =
   {
     {type="item",name="seed",amount=10},
     {type="fluid",name="water",amount=100}
   },
   result = "carrot",
   category = "farm",
   result_count = 10,
   allow_as_intermediate = false
 },
 {
    type = "recipe",
    name = "seed_assembly",
    enabled = "true",
    energy_required = 5,
    ingredients =
    {
      {"iron-plate",10},
      {"electronic-circuit",5}
    },
    result = "seed_assembly",
    category = "crafting"
  },
  {
    type = "recipe",
    name = "wind_mill",
    enabled = "true",
    energy_required = 5,
    ingredients =
    {
      {"iron-plate",5},
      {"wood",50},
      {"electronic-circuit",5}
    },
    result = "wind_mill",
    category = "crafting"
  },
  {
    type = "recipe",
    name = "wood",
    enabled = "true",
    energy_required = 30,
    ingredients = 
    {
      {type="item",name="seed",amount=10},
      {type="fluid",name="water",amount=200}
    },
    result = "wood",
    result_count = 2,
    allow_as_intermediate = false,
    category = "farm"
  },
  {
    type = "recipe",
    name = "seed",
    enabled = "true",
    energy_required = 20,
    ingredients = 
    {
      {type="item",name="seed",amount=10},
      {type="fluid",name="water",amount=100}
    },
    result = "seed",
    result_count = 20,
    allow_as_intermediate = false,
    category = "farm"
  }
})