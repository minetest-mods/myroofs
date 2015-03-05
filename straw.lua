local slope_cbox = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
}

local slope_cbox_long = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5,   -1.5,  0.5, -0.375, 0.5},  --  NodeBox1
		{-0.5, -0.375, -1.25, 0.5, -0.25,  0.5},  --  NodeBox2
		{-0.5, -0.25,  -1,    0.5, -0.125, 0.5},  --  NodeBox3
		{-0.5, -0.125, -0.75, 0.5,  0,     0.5},  --  NodeBox4
		{-0.5,  0,     -0.5,  0.5,  0.125, 0.5},  --  NodeBox5
		{-0.5,  0.125, -0.25, 0.5,  0.25,  0.5},  --  NodeBox6
		{-0.5,  0.25,   0,    0.5,  0.375, 0.5},  --  NodeBox7
		{-0.5,  0.375,  0.25, 0.5,  0.5,   0.5},  --  NodeBox8
	}
}

local icorner_cbox = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5}, -- NodeBox5
		{-0.5, -0.5, -0.25, 0.5, 0, 0.5}, -- NodeBox6
		{-0.5, -0.5, -0.5, 0.25, 0, 0.5}, -- NodeBox7
		{-0.5, 0, -0.5, 0, 0.25, 0.5}, -- NodeBox8
		{-0.5, 0, 0, 0.5, 0.25, 0.5}, -- NodeBox9
		{-0.5, 0.25, 0.25, 0.5, 0.5, 0.5}, -- NodeBox10
		{-0.5, 0.25, -0.5, -0.25, 0.5, 0.5}, -- NodeBox11
	}
}

local ocorner_cbox = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5,   0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25,  0.25,     0, 0.5},
		{-0.5,     0,     0,     0,  0.25, 0.5},
		{-0.5,  0.25,  0.25, -0.25,   0.5, 0.5}
	}
}
--Straw roof
minetest.register_node("myroofs:straw_roof", {
	description = "Straw Roof",
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"myroofs_straw_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--Craft
minetest.register_craft({
	output = "myroofs:straw_roof 6",
	recipe = {
		{"", "","farming:straw"},
		{"", "farming:straw","farming:straw"},
		{"farming:straw", "farming:straw","farming:straw"},
	}
})
--Straw roof ocorner
minetest.register_node("myroofs:straw_roof_ocorner", {
	description = "Straw Roof Outside Corner",
	drawtype = "mesh",
	mesh = "slope_test_ocorner.obj",
	tiles = {"myroofs_straw_mesh_ocorner.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = ocorner_cbox,
	selection_box = ocorner_cbox
})
--Craft
minetest.register_craft({
	output = "myroofs:straw_roof_ocorner 5",
	recipe = {
		{"farming:straw", "",""},
		{"farming:straw", "farming:straw",""},
		{"farming:straw", "farming:straw",""},
	}
})
--Straw roof icorner
minetest.register_node("myroofs:straw_roof_icorner", {
	description = "Straw Roof Inside Corner",
	drawtype = "mesh",
	mesh = "slope_test_icorner.obj",
	tiles = {"myroofs_straw_mesh_icorner.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = icorner_cbox,
	selection_box = icorner_cbox
})
--Craft
minetest.register_craft({
	output = "myroofs:straw_roof_ocorner 8",
	recipe = {
		{"farming:straw", "farming:straw","farming:straw"},
		{"farming:straw", "farming:straw","farming:straw"},
		{"farming:straw", "farming:straw",""},
	}
})

--Dark Straw Roof
minetest.register_node("myroofs:straw_roof_dark", {
	description = "Dark Straw Roof",
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"myroofs_dark_straw_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--Craft
minetest.register_craft({
	output = "myroofs:straw_roof_dark 6",
	recipe = {
		{"myroofs:straw_roof", "",""},
		{"dye:black", "",""},
		{"", "",""},
	}
})
--Dark Straw roof ocorner
minetest.register_node("myroofs:straw_roof_dark_ocorner", {
	description = "Dark Straw Roof Outside Corner",
	drawtype = "mesh",
	mesh = "slope_test_ocorner.obj",
	tiles = {"myroofs_dark_straw_mesh_ocorner.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = ocorner_cbox,
	selection_box = ocorner_cbox
})
--Craft
minetest.register_craft({
	output = "myroofs:straw_roof_dark_ocorner 5",
	recipe = {
		{"myroofs:straw_roof_dark", "",""},
		{"myroofs:straw_roof_dark", "myroofs:straw_roof_dark",""},
		{"myroofs:straw_roof_dark", "myroofs:straw_roof_dark",""},
	}
})
--Dark Straw roof icorner
minetest.register_node("myroofs:straw_roof_dark_icorner", {
	description = "DarkStraw Roof Inside Corner",
	drawtype = "mesh",
	mesh = "slope_test_icorner.obj",
	tiles = {"myroofs_dark_straw_mesh_icorner.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = icorner_cbox,
	selection_box = icorner_cbox
})
--Craft
minetest.register_craft({
	output = "myroofs:straw_roof_dark_ocorner 8",
	recipe = {
		{"farming:straw", "farming:straw","farming:straw"},
		{"farming:straw", "farming:straw","farming:straw"},
		{"farming:straw", "farming:straw",""},
	}
})
----------------------------------------------------------------------------------------
minetest.register_node("myroofs:straw_roof_long", {
	description = "Straw Roof Long",
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"myroofs_straw_long_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Craft
minetest.register_craft({
	output = "myroofs:straw_roof_long 1",
	recipe = {
		{"myroofs:straw_roof", "myroofs:straw_roof",""},
		{"", "",""},
		{"", "",""},
	}
})

minetest.register_node("myroofs:straw_roof_dark_long", {
	description = "Dark Straw Roof Long",
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"myroofs_dark_straw_long_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Craft
minetest.register_craft({
	output = "myroofs:straw_roof_dark_long 1",
	recipe = {
		{"myroofs:straw_roof_dark", "myroofs:straw_roof_dark",""},
		{"", "",""},
		{"", "",""},
	}
})

minetest.register_node("myroofs:reet_roof", {
	description = "Reet Roof",
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"myroofs_reet_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--Craft
minetest.register_craft({
	output = "myroofs:reet_roof 6",
	recipe = {
		{"", "","cottages:reet"},
		{"", "cottages:reet","cottages:reet"},
		{"cottages:reet", "cottages:reet","cottages:reet"},
	}
})


minetest.register_node("myroofs:reet_roof_long", {
	description = "Reet Roof Long",
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"myroofs_reet_long_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Craft
minetest.register_craft({
	output = "myroofs:reet_roof_long 1",
	recipe = {
		{"myroofs:reet_roof", "myroofs:reet_roof",""},
		{"", "",""},
		{"", "",""},
	}
})
