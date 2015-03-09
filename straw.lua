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

local icorner_cbox_long = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5, -1.5, -0.25, 0.5, 0.5},
		{-0.5, -0.5, 0.25, 1.5, 0.5, 0.5},
		{-0.5, -0.5, 0, 1.5, 0.375, 0.5},
		{-0.5, -0.5, -1.5, 0, 0.375, 0.5},
		{-0.5, -0.5, -1.5, 0.25, 0.25, 0.5},
		{-0.5, -0.5, -1.5, 0.5, 0.125, 0.5},
		{-0.5, -0.5, -1.5, 0.75, 0, 0.5},
		{-0.5, -0.5, -1.5, 1, -0.125, 0.5},
		{-0.5, -0.5, -1.5, 1.25, -0.25, 0.5},
		{-0.5, -0.5, -1.5, 1.5, -0.375, 0.5},
		{-0.5, -0.5, -0.25, 1.5, 0.25, 0.5},
		{-0.5, -0.5, -0.5, 1.5, 0.125, 0.5}, 
		{-0.5, -0.5, -0.75, 1.5, 0, 0.5},
		{-0.5, -0.5, -1, 1.5, -0.125, 0.5},
		{-0.5, -0.5, -1.25, 1.5, -0.25, 0.5},
	}
}

local ocorner_cbox_long = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5, 0.25, -0.25, 0.5, 0.5},
		{-0.5, -0.5, 0, 0, 0.375, 0.5},
		{-0.5, -0.5, -0.25, 0.25, 0.25, 0.5},
		{-0.5, -0.5, -0.5, 0.5, 0.125, 0.5}, 
		{-0.5, -0.5, -0.75, 0.75, 0, 0.5}, 
		{-0.5, -0.5, -1, 1, -0.125, 0.5}, 
		{-0.5, -0.5, -1.25, 1.25, -0.25, 0.5}, 
		{-0.5, -0.5, -1.5, 1.5, -0.375, 0.5},
	}
}
--Straw roof
minetest.register_node("myroofs:straw_roof", {
	description = "Straw Roof",
	drawtype = "mesh",
	mesh = "twelve-twelve.obj",
	tiles = {"myroofs_straw.png"},
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
	mesh = "twelve-twelve-oc.obj",
	tiles = {"myroofs_straw.png"},
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
	mesh = "twelve-twelve-ic.obj",
	tiles = {"myroofs_straw.png"},
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
	output = "myroofs:straw_roof_icorner 8",
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
	mesh = "twelve-twelve.obj",
	tiles = {"myroofs_dark_straw.png"},
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
	mesh = "twelve-twelve-oc.obj",
	tiles = {"myroofs_dark_straw.png"},
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
	mesh = "twelve-twelve-ic.obj",
	tiles = {"myroofs_dark_straw.png"},
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
	output = "myroofs:straw_roof_dark_icorner 8",
	recipe = {
		{"farming:straw", "farming:straw","farming:straw"},
		{"farming:straw", "farming:straw","farming:straw"},
		{"farming:straw", "farming:straw",""},
	}
})

minetest.register_node("myroofs:reet_roof", {
	description = "Reet Roof",
	drawtype = "mesh",
	mesh = "twelve-twelve.obj",
	tiles = {"myroofs_reet.png"},
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

--Dark Reet roof ocorner
minetest.register_node("myroofs:reet_roof_ocorner", {
	description = "Reet Roof Outside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-oc.obj",
	tiles = {"myroofs_reet.png"},
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
	output = "myroofs:reet_roof_ocorner 5",
	recipe = {
		{"myroofs:reet_roof", "",""},
		{"myroofs:reet_roof", "myroofs:reet_roof",""},
		{"myroofs:reet_roof", "myroofs:reet_roof",""},
	}
})
--Reet roof icorner
minetest.register_node("myroofs:reet_roof_icorner", {
	description = "Reet Roof Inside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-ic.obj",
	tiles = {"myroofs_reet.png"},
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
	output = "myroofs:reet_roof_icorner 8",
	recipe = {
		{"myroofs:reet_roof", "myroofs:reet_roof","myroofs:reet_roof"},
		{"myroofs:reet_roof", "myroofs:reet_roof","myroofs:reet_roof"},
		{"myroofs:reet_roof", "myroofs:reet_roof",""},
	}
})

-- Long Slope Roof Parts --------------------------------------------------------------------------------------

--Straw Roof Long
minetest.register_node("myroofs:straw_roof_long", {
	description = "Straw Roof Long",
	drawtype = "mesh",
	mesh = "six-twelve_slope.obj",
	tiles = {"myroofs_straw.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Straw Roof Long Craft
minetest.register_craft({
	output = "myroofs:straw_roof_long 1",
	recipe = {
		{"myroofs:straw_roof", "myroofs:straw_roof",""},
		{"", "",""},
		{"", "",""},
	}
})

--Straw roof icorner
minetest.register_node("myroofs:straw_roof_long_icorner", {
	description = "Straw Roof Long Inside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-ic.obj",
	tiles = {"myroofs_straw.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = icorner_cbox_long,
	selection_box = icorner_cbox_long
})
--Craft
minetest.register_craft({
	output = "myroofs:straw_roof_long_icorner 1",
	recipe = {
		{"", "myroofs:straw_roof",""},
		{"myroofs:straw_roof", "","myroofs:straw_roof"},
		{"", "",""},
	}
})

--Straw Roof Long Outside Corner
minetest.register_node("myroofs:straw_roof_long_ocorner", {
	description = "Straw Roof Long Outside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-oc.obj",
	tiles = {"myroofs_straw.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = ocorner_cbox_long,
	selection_box = ocorner_cbox_long
})
--Straw Roof Long Outside Corner Craft
minetest.register_craft({
	output = "myroofs:straw_roof_long_ocorner 1",
	recipe = {
		{"myroofs:straw_roof", "","myroofs:straw_roof"},
		{"", "myroofs:straw_roof",""},
		{"", "",""},
	}
})

--Dark Straw Roof Long
minetest.register_node("myroofs:straw_roof_dark_long", {
	description = "Dark Straw Roof Long",
	drawtype = "mesh",
	mesh = "six-twelve_slope.obj",
	tiles = {"myroofs_dark_straw.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Dark Straw Roof Long Craft
minetest.register_craft({
	output = "myroofs:straw_roof_dark_long 1",
	recipe = {
		{"myroofs:straw_roof_dark", "myroofs:straw_roof_dark",""},
		{"", "",""},
		{"", "",""},
	}
})

--Dark Straw Roof Long Inside Corner
minetest.register_node("myroofs:straw_roof_dark_long_icorner", {
	description = "Dark Straw Roof Long Inside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-ic.obj",
	tiles = {"myroofs_dark_straw.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = icorner_cbox_long,
	selection_box = icorner_cbox_long
})
--Dark Straw Roof Long Inside Corner Craft
minetest.register_craft({
	output = "myroofs:straw_roof_dark_long_icorner 1",
	recipe = {
		{"", "myroofs:straw_roof_dark",""},
		{"myroofs:straw_roof_dark", "","myroofs:straw_roof_dark"},
		{"", "",""},
	}
})

--Dark Straw Roof Long Outside Corner
minetest.register_node("myroofs:straw_roof_dark_long_ocorner", {
	description = "Dark Straw Roof Long Outside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-oc.obj",
	tiles = {"myroofs_dark_straw.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = ocorner_cbox_long,
	selection_box = ocorner_cbox_long
})
--Dark Straw Roof Long Outside Corner Craft
minetest.register_craft({
	output = "myroofs:straw_roof_dark_long_ocorner 1",
	recipe = {
		{"myroofs:straw_roof_dark", "","myroofs:straw_roof_dark"},
		{"", "myroofs:straw_roof_dark",""},
		{"", "",""},
	}
})

--Reet Roof Long
minetest.register_node("myroofs:reet_roof_long", {
	description = "Reet Roof Long",
	drawtype = "mesh",
	mesh = "six-twelve_slope.obj",
	tiles = {"myroofs_reet.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Reet Roof Long Craft
minetest.register_craft({
	output = "myroofs:reet_roof_long 1",
	recipe = {
		{"myroofs:reet_roof", "myroofs:reet_roof",""},
		{"", "",""},
		{"", "",""},
	}
})

--Reet Roof Long Inside Corner
minetest.register_node("myroofs:reet_roof_long_icorner", {
	description = "Reet Roof Long Inside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-ic.obj",
	tiles = {"myroofs_reet.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = icorner_cbox_long,
	selection_box = icorner_cbox_long
})
--Reet Roof Long Inside Corner Craft
minetest.register_craft({
	output = "myroofs:reet_roof_long_icorner 1",
	recipe = {
		{"", "myroofs:reet_roof",""},
		{"myroofs:reet_roof", "","myroofs:reet_roof"},
		{"", "",""},
	}
})

--Reet Roof Long Outside Corner
minetest.register_node("myroofs:reet_roof_long_ocorner", {
	description = "Reet Roof Long Outside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-oc.obj",
	tiles = {"myroofs_reet.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = ocorner_cbox_long,
	selection_box = ocorner_cbox_long
})
--Reet Roof Long Outside Corner Craft
minetest.register_craft({
	output = "myroofs:reet_roof_long_ocorner 1",
	recipe = {
		{"myroofs:reet_roof", "","myroofs:reet_roof"},
		{"", "myroofs:reet_roof",""},
		{"", "",""},
	}
})
