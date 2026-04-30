minetest.register_node("tech:roof_ridge_tile", {
    description = S("Roof Ridge Tile"),
    tiles = { "tech_roof_tiles.png" },
    stack_max = minimal.stack_max_medium,
    drawtype = "nodebox",
    paramtype2 = "facedir",
    node_box = {
        type = "fixed",
        fixed = {
            { -0.5000, -0.5000, 0.2500, -0.2500, -0.2500, 0.5000 },
            { 0.2500, -0.5000, 0.2500, 0.5000, -0.2500, 0.5000 },
            { -0.5000, -0.5000, -0.2500, -0.2500, -0.2500, -0.5000 },
            { 0.2500, -0.5000, -0.2500, 0.5000, -0.2500, -0.5000 },
            { -0.3750, -0.3750, -0.3750, 0.3750, -0.3125, 0.3750 },
            { -0.2500, -0.3125, -0.2500, 0.2500, -0.1875, 0.2500 },
            { -0.2500, -0.5000, 0.2500, 0.2500, -0.3750, 0.5000 },
            { -0.5000, -0.5000, -0.2500, -0.2500, -0.3750, 0.2500 },
            { 0.2500, -0.5000, -0.2500, 0.5000, -0.3750, 0.2500 },
            { -0.2500, -0.5000, -0.5000, 0.2500, -0.3750, -0.2500 },
        },
    },
    groups = { cracky = 3, oddly_breakable_by_hand = 1 },
    sounds = nodes_nature.node_sound_stone_defaults(),
})

crafting.register_recipe({
    type = "brick_makers_bench",
    output = "tech:roof_ridge_tile",
    items = { "tech:roof_tile" },
    level = 1,
    always_known = true,
})
