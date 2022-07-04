RECIPE {
    type = "recipe",
    name = "py-coal-powerplant-mk04",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"py-coal-powerplant-mk03", 1},
        {"small-parts-03", 300},
        {"super-alloy", 200},
        {"intelligent-unit", 50},
        {'metastable-quasicrystal', 20},
        {"superconductor-servomechanims", 50},
        {"control-unit", 20},
        {"ti-n", 100},
        {"metallic-glass", 50},
        {"sc-engine", 8},
        {"nbti-alloy", 200},
    },
    results = {
        {"py-coal-powerplant-mk04", 1}
    }
}:add_unlock("coalplant-mk04")

ITEM {
    type = "item",
    name = "py-coal-powerplant-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/coal-powerplant-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk04",
    order = "a",
    place_result = "py-coal-powerplant-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "py-coal-powerplant-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/coal-powerplant-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "py-coal-powerplant-mk04"},
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"speed", "consumption"},
    crafting_categories = {"coal-powerplant"},
    crafting_speed = 4,
    energy_source =
    {
      type = "burner",
      fuel_category = "chemical",
      effectivity = 1,
      light_flicker =
      {
        minimum_intensity = 0,
        maximum_intensity = 0,
        light_intensity_to_size_coefficient = 0,
        color = {0,0,0},
      },
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      emissions_per_minute = 15,
      smoke =
      {
        {
            name = "smoke",
            north_position = util.by_pixel(128, -355),
            south_position = util.by_pixel(128, -355),
            east_position = util.by_pixel(128, -355),
            west_position = util.by_pixel(128, -355),
            frequency = 90,
            slow_down_factor = 1,
            starting_vertical_speed = 0.07,
            starting_frame_deviation = 60,
            color = {r = 0.2, g = 0.2, b = 0.2},
        },
        {
            name = "smoke",
            north_position = util.by_pixel(168, -328),
            south_position = util.by_pixel(168, -328),
            east_position = util.by_pixel(168, -328),
            west_position = util.by_pixel(168, -328),
            frequency = 90,
            slow_down_factor = 1,
            starting_vertical_speed = 0.07,
            starting_frame_deviation = 60,
            color = {r = 0.2, g = 0.2, b = 0.2},
        },
      },
    },
    energy_usage = "50MW",
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/bottom.png",
                width = 416,
                height = 128,
                frame_count = 1,
                repeat_count = 151,
                animation_speed = 1/3,
                shift = util.by_pixel(0, 144),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/sh.png",
                width = 64,
                height = 382,
                line_length = 32,
                frame_count = 151,
                animation_speed = 1/3,
                draw_as_shadow = true ,
                shift = util.by_pixel(240, 16),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/mask.png",
                width = 416,
                height = 128,
                frame_count = 1,
                repeat_count = 151,
                animation_speed = 1/3,
                shift = util.by_pixel(0, 144),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r1.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                shift = util.by_pixel(-192, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r2.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                shift = util.by_pixel(-160, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r3.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                shift = util.by_pixel(-128, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r4.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                shift = util.by_pixel(-96, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r5.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                shift = util.by_pixel(-64, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r6.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                shift = util.by_pixel(-32, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r7.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                shift = util.by_pixel(-0, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r8.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                shift = util.by_pixel(32, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r9.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                shift = util.by_pixel(64, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r10.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                shift = util.by_pixel(96, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r11.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                shift = util.by_pixel(128, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r12.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                shift = util.by_pixel(160, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/r13.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                shift = util.by_pixel(192, -160),
            },
            --GLOW
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l1.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                draw_as_glow = true,
                shift = util.by_pixel(-192, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l2.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                draw_as_glow = true,
                shift = util.by_pixel(-160, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l3.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                draw_as_glow = true,
                shift = util.by_pixel(-128, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l4.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                draw_as_glow = true,
                shift = util.by_pixel(-96, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l5.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                draw_as_glow = true,
                shift = util.by_pixel(-64, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l6.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                draw_as_glow = true,
                shift = util.by_pixel(-32, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l7.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                draw_as_glow = true,
                shift = util.by_pixel(-0, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l8.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                draw_as_glow = true,
                shift = util.by_pixel(32, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l9.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                draw_as_glow = true,
                shift = util.by_pixel(64, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l10.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                draw_as_glow = true,
                shift = util.by_pixel(96, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l11.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                draw_as_glow = true,
                shift = util.by_pixel(128, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l12.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                draw_as_glow = true,
                shift = util.by_pixel(160, -160),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/coal-powerplant/l13.png",
                width = 32,
                height = 480,
                line_length = 64,
                frame_count = 151,
                animation_speed = 1/3,
                draw_as_glow = true,
                shift = util.by_pixel(192, -160),
            },
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 7.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-3.0, 7.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.0, 7.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, -7.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {3.0, -7.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-3.0, -7.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/coal-powerplant.ogg", volume = 0.7},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/coal-powerplant.ogg", volume = 0.1},
        apparent_volume = 0.45
    },
    fast_replaceable_group = "coal-power"
  }
