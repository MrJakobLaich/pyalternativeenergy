RECIPE {
    type = "recipe",
    name = "neutron-absorber-mk02",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"neutron-absorber-mk01", 1},
        {"advanced-circuit", 25},
        {"small-parts-02", 100},
        {"fenxsb-alloy", 15},
        {"refined-concrete", 50},
        {"stainless-steel", 100},
        {"lead-plate", 50},
        {"lithium", 30},
        {'eva', 20},
        {"electronics-mk02", 3},
        {"mechanical-parts-02", 1},
        {'self-assembly-monolayer', 10},
    },
    results = {
        {"neutron-absorber-mk02", 1}
    }
}:add_unlock("nuclear-power-mk02")

ITEM {
    type = "item",
    name = "neutron-absorber-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/neutron-absorber-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk02",
    order = "a",
    place_result = "neutron-absorber-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "neutron-absorber-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/neutron-absorber-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "neutron-absorber-mk02"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"speed", "consumption"},
    crafting_categories = {"neutron-absorber"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.0,
    },
    energy_usage = "400kW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-absorber/off.png",
                width = 224,
                height = 416,
                frame_count = 1,
                shift = util.by_pixel(8, -56),
                scale = 0.5,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-absorber/mask.png",
                width = 224,
                height = 416,
                frame_count = 1,
                shift = util.by_pixel(8, -56),
                tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
                scale = 0.5,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-absorber/sh.png",
                width = 288,
                height = 192,
                frame_count = 1,
                shift = util.by_pixel(24, 0),
                scale = 0.5,
                draw_as_shadow = true,
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(6, -87),
            west_position = util.by_pixel(6, -87),
            south_position = util.by_pixel(6, -87),
            east_position = util.by_pixel(6, -87),
            animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/neutron-absorber/l.png",
                frame_count = 15,
                line_length = 5,
                width = 224,
                height = 288,
                animation_speed = 0.3,
                run_mode = "forward-then-backward",
                draw_as_glow = true,
                scale = 0.5,
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 2.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, -2.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    fast_replaceable_group = "neutron-absorber"
  }
