local util = require('util')

RECIPE{
    type = "recipe",
    name = "aerial-blimp-mk01",
	energy_required = 50,
	category = 'advanced-crafting',
    enabled = false,
    ingredients =
    {
		{"shaft-mk01", 1},
        {"aluminium-plate", 15},
        {"bolts", 20},
        {"anemometer-mk01", 1},
        {"electronic-circuit", 10},
        {"small-parts-01", 50},
        {"intermetallics", 5},
        {"utility-box-mk01", 1},
		{"battery-mk01", 25},
        {"plastic-bar", 30},
        {"copper-cable", 50},
		{type = "fluid", name = "hot-air", amount = 800},
    },
    result = "aerial-blimp-mk01"
  }:add_unlock("renewable-mk01")

ITEM{
    type = "item-with-tags",
    name = "aerial-blimp-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/aerial-mk01.png",
    icon_size = 64,
    subgroup = "py-alternativeenergy-buildings-mk01",
    order = "b",
    place_result = "aerial-blimp-mk01",
	stack_size = 1,
	flags = {'not-stackable'}
  }

data:extend(
{
  {
	ai_settings = {do_separation = false},
    type = "unit",
	additional_pastable_entities = {'aerial-blimp-ht', 'aerial-blimp-mk01', 'aerial-blimp-mk02', 'aerial-blimp-mk03', 'aerial-blimp-mk04'},
    name = "aerial-blimp-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/aerial-mk01.png",
    icon_size = 64,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid"},
	minable = {mining_time = 0.5, result = "aerial-blimp-mk01"},
    max_health = 25,
    order = "b-b-a",
    subgroup="enemies",
    resistances =
		{
			{
				type = "physical",
				percent = 100
			},
		},
    healing_per_tick = 0.01,
    immune_to_tree_impacts = true,
    has_belt_immunity = true,
    immune_to_rock_impacts = true,
    collision_mask = {'not-colliding-with-itself'},
	selection_priority = 51,
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    attack_parameters =
    {
      type = "projectile",
      range = 0,
      cooldown = 0,
      ammo_type = _G.make_unit_melee_ammo_type(0),
      --sound = make_biter_roars(0.4),
	animation =
	{
		layers =
		{
			{
			filename = "__pyalternativeenergygraphics__/graphics/entity/aerial-mk01/raw.png",
			--slice = 8,
			--lines_per_file = 4,
			line_length = 16,
			width = 127,
			height = 287,
			frame_count = 1,
			direction_count = 64,
			shift = util.mul_shift(util.by_pixel(-0, -0)),
			scale = 0.4,
			},
			{
				filename = "__pyalternativeenergygraphics__/graphics/entity/aerial-mk01/sh.png",
				--slice = 8,
				--lines_per_file = 4,
				line_length = 16,
				width = 96,
				height = 64,
				frame_count = 1,
				direction_count = 64,
				--draw_as_shadow = true,
				shift = util.mul_shift(util.by_pixel(128, 224)),
				scale = 0.45,
			},
		}
	},
	},
	vision_distance = 30,
	movement_speed = 0.02,
	distance_per_frame = 0.13,
	pollution_to_join_attack = 4,
	distraction_cooldown = 300,
	min_pursue_time = 10 * 60,
	max_pursue_distance = 50,
	--corpse = "arthurian-corpse",
	dying_explosion = "blood-explosion-small",
	run_animation =
	{
		layers =
		{
			{
			filename = "__pyalternativeenergygraphics__/graphics/entity/aerial-mk01/raw.png",
			--slice = 8,
			--lines_per_file = 4,
			line_length = 16,
			width = 127,
			height = 287,
			frame_count = 1,
			direction_count = 64,
			shift = util.mul_shift(util.by_pixel(-0, -0)),
			scale = 0.4,
			},
			{
				filename = "__pyalternativeenergygraphics__/graphics/entity/aerial-mk01/sh.png",
				--slice = 8,
				--lines_per_file = 4,
				line_length = 16,
				width = 96,
				height = 64,
				frame_count = 1,
				direction_count = 64,
				--draw_as_shadow = true,
				shift = util.mul_shift(util.by_pixel(128, 224)),
				scale = 0.45,
			},
		}
	},
    render_layer = 'air-object'
  }

  }
  )


data:extend{
	{
		type = 'virtual-signal',
		icons = {{icon = '__pyalternativeenergygraphics__/graphics/icons/aerial-mk01.png', scale = 0.25, icon_size = 64}},
		name = 'aerial-blimp-mk01',
		subgroup = 'py-alienlife-special-creatures',
		localised_name = {'virtual-signal-name.caravan-map-tag'}
	},
	{
		type = 'virtual-signal',
		icons = {{icon = '__pyalternativeenergygraphics__/graphics/icons/aerial-mk02.png', scale = 0.25, icon_size = 64}},
		name = 'aerial-blimp-mk02',
		subgroup = 'py-alienlife-special-creatures',
		localised_name = {'virtual-signal-name.caravan-map-tag'}
	},
	{
		type = 'virtual-signal',
		icons = {{icon = '__pyalternativeenergygraphics__/graphics/icons/aerial-mk03.png', scale = 0.25, icon_size = 64}},
		name = 'aerial-blimp-mk03',
		subgroup = 'py-alienlife-special-creatures',
		localised_name = {'virtual-signal-name.caravan-map-tag'}
	},
	{
		type = 'virtual-signal',
		icons = {{icon = '__pyalternativeenergygraphics__/graphics/icons/aerial-mk04.png', scale = 0.25, icon_size = 64}},
		name = 'aerial-blimp-mk04',
		subgroup = 'py-alienlife-special-creatures',
		localised_name = {'virtual-signal-name.caravan-map-tag'}
	},
}