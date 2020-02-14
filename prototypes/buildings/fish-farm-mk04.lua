RECIPE {
    type = "recipe",
    name = "fish-farm-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"fish-farm-mk03", 1},
        {"boron-carbide", 50},
        {"blanket", 1},
        {"silver-foam", 20},
        {"divertor", 10},
        {"metallic-glass", 30},
        {"control-unit", 10},
    },
    results = {
        {"fish-farm-mk04", 1}
    }
}:add_unlock("water-animals-mk04")

ITEM {
    type = "item",
    name = "fish-farm-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/fish-farm-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk04",
    order = "d",
    place_result = "fish-farm-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "fish-farm-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/fish-farm-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "fish-farm-mk04"},
    fast_replaceable_group = "fish-farm",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.1, -5.1}, {5.1, 5.1}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 27
    },
    allowed_effects = {"speed","productivity"},
    crafting_categories = {"fish-farm"},
    crafting_speed = 0.02,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.5,
    },
    energy_usage = "1100kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fish-farm/off.png",
                width = 384,
                height = 384,
                frame_count = 1,
                line_length = 1,
                shift = util.by_pixel(16, -16)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fish-farm/off-mask.png",
                width = 384,
                height = 384,
                frame_count = 1,
                line_length = 1,
                shift = util.by_pixel(16, -16),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-128, -16),
            west_position = util.by_pixel(-128, -16),
            south_position = util.by_pixel(-128, -16),
            east_position = util.by_pixel(-128, -16),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/fish-farm/a1.png",
                frame_count = 150,
                line_length = 21,
                width = 96,
                height = 256,
                animation_speed = 0.35
            }
        },
        {
            north_position = util.by_pixel(-32, -16),
            west_position = util.by_pixel(-32, -16),
            south_position = util.by_pixel(-32, -16),
            east_position = util.by_pixel(-32, -16),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/fish-farm/a2.png",
                frame_count = 150,
                line_length = 21,
                width = 96,
                height = 256,
                animation_speed = 0.35
            }
        },
        {
            north_position = util.by_pixel(64, -16),
            west_position = util.by_pixel(64, -16),
            south_position = util.by_pixel(64, -16),
            east_position = util.by_pixel(64, -16),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/fish-farm/a3.png",
                frame_count = 150,
                line_length = 21,
                width = 96,
                height = 256,
                animation_speed = 0.35
            }
        },
        {
            north_position = util.by_pixel(144, -16),
            west_position = util.by_pixel(144, -16),
            south_position = util.by_pixel(144, -16),
            east_position = util.by_pixel(144, -16),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/fish-farm/a4.png",
                frame_count = 150,
                line_length = 21,
                width = 64,
                height = 256,
                animation_speed = 0.35
            }
        },
    },

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -6.0}}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 6.0}}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{type = "output", position = {6.0, 0.0}}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{type = "output", position = {-6.0, 0.0}}},
            secondary_draw_orders = { north = -1 }
        },
        off_when_no_fluid_recipe = true
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/fish-farm.ogg", volume = 0.65},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/fish-farm.ogg", volume = 0.45},
        apparent_volume = 2.5
    }
}
