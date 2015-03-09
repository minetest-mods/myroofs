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
--Grey Asphalt Shingle
minetest.register_node("myroofs:asphalt_shingle_grey", {
	description = "Grey Asphalt Shingle",
	drawtype = "mesh",
	mesh = "twelve-twelve.obj",
	tiles = {"myroofs_asphalt_shingle_grey.png"},
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
	output = "myroofs:asphalt_shingle_grey 15",
	recipe = {
		{"default:gravel", "default:coal_lump","default:gravel"},
		{"default:coal_lump", "default:coal_lump","default:coal_lump"},
		{"default:gravel", "default:gravel","default:coal_lump"},
	}
})
--Grey Asphalt ocorner
minetest.register_node("myroofs:asphalt_shingle_grey_ocorner", {
	description = "Grey Asphalt Shingle Outside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-oc.obj",
	tiles = {"myroofs_asphalt_shingle_grey.png"},
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
	output = "myroofs:asphalt_shingle_grey_ocorner 5",
	recipe = {
		{"myroofs:asphalt_shingle_grey", "",""},
		{"myroofs:asphalt_shingle_grey", "myroofs:asphalt_shingle_grey",""},
		{"myroofs:asphalt_shingle_grey", "myroofs:asphalt_shingle_grey",""},
	}
})
--Grey Asphalt icorner
minetest.register_node("myroofs:asphalt_shingle_grey_icorner", {
	description = "Grey Asphalt Shingle Inside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-ic.obj",
	tiles = {"myroofs_asphalt_shingle_grey.png"},
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
	output = "myroofs:asphalt_shingle_grey_icorner 8",
	recipe = {
		{"myroofs:asphalt_shingle_grey", "myroofs:asphalt_shingle_grey","myroofs:asphalt_shingle_grey"},
		{"myroofs:asphalt_shingle_grey", "myroofs:asphalt_shingle_grey","myroofs:asphalt_shingle_grey"},
		{"myroofs:asphalt_shingle_grey", "myroofs:asphalt_shingle_grey",""},
	}
})

--Dark Grey Asphalt
minetest.register_node("myroofs:asphalt_shingle_dark_grey", {
	description = "Dark Grey Asphalt Shingle",
	drawtype = "mesh",
	mesh = "twelve-twelve.obj",
	tiles = {"myroofs_asphalt_shingle_dark_grey.png"},
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
	output = "myroofs:asphalt_shingle_dark_grey 1",
	recipe = {
		{"myroofs:asphalt_shingle_grey", "",""},
		{"dye:black", "",""},
		{"", "",""},
	}
})
--Dark Grey Asphalt ocorner
minetest.register_node("myroofs:asphalt_shingle_dark_grey_ocorner", {
	description = "Dark Grey Asphalt Shingle Outside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-oc.obj",
	tiles = {"myroofs_asphalt_shingle_dark_grey.png"},
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
	output = "myroofs:asphalt_shingle_dark_grey_ocorner 5",
	recipe = {
		{"myroofs:asphalt_shingle_dark_grey", "",""},
		{"myroofs:asphalt_shingle_dark_grey", "myroofs:asphalt_shingle_dark_grey",""},
		{"myroofs:asphalt_shingle_dark_grey", "myroofs:asphalt_shingle_dark_grey",""},
	}
})
--Dark Grey Asphalt icorner
minetest.register_node("myroofs:asphalt_shingle_dark_grey_icorner", {
	description = "Dark Grey Asphalt Shingle Inside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-ic.obj",
	tiles = {"myroofs_asphalt_shingle_dark_grey.png"},
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
	output = "myroofs:asphalt_shingle_grey_icorner 8",
	recipe = {
		{"myroofs:asphalt_shingle_dark_grey", "myroofs:asphalt_shingle_dark_grey","myroofs:asphalt_shingle_dark_grey"},
		{"myroofs:asphalt_shingle_dark_grey", "myroofs:asphalt_shingle_dark_grey","myroofs:asphalt_shingle_dark_grey"},
		{"myroofs:asphalt_shingle_dark_grey", "myroofs:asphalt_shingle_dark_grey",""},
	}
})

--Red Asphalt
minetest.register_node("myroofs:asphalt_shingle_red", {
	description = "Red Asphalt Shingle",
	drawtype = "mesh",
	mesh = "twelve-twelve.obj",
	tiles = {"myroofs_asphalt_shingle_red.png"},
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
	output = "myroofs:asphalt_shingle_red 1",
	recipe = {
		{"myroofs:asphalt_shingle_grey", "",""},
		{"dye:red", "",""},
		{"", "",""},
	}
})
--Red Asphalt ocorner
minetest.register_node("myroofs:asphalt_shingle_red_ocorner", {
	description = "Red Asphalt Shingle Outside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-oc.obj",
	tiles = {"myroofs_asphalt_shingle_red.png"},
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
	output = "myroofs:asphalt_shingle_red_ocorner 5",
	recipe = {
		{"myroofs:asphalt_shingle_red", "",""},
		{"myroofs:asphalt_shingle_red", "myroofs:asphalt_shingle_red",""},
		{"myroofs:asphalt_shingle_red", "myroofs:asphalt_shingle_red",""},
	}
})
--Red Asphalt icorner
minetest.register_node("myroofs:asphalt_shingle_red_icorner", {
	description = "Red Asphalt Shingle Inside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-ic.obj",
	tiles = {"myroofs_asphalt_shingle_red.png"},
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
	output = "myroofs:asphalt_shingle_red_icorner 8",
	recipe = {
		{"myroofs:asphalt_shingle_red", "myroofs:asphalt_shingle_red","myroofs:asphalt_shingle_red"},
		{"myroofs:asphalt_shingle_red", "myroofs:asphalt_shingle_red","myroofs:asphalt_shingle_red"},
		{"myroofs:asphalt_shingle_red", "myroofs:asphalt_shingle_red",""},
	}
})

--Green Asphalt
minetest.register_node("myroofs:asphalt_shingle_green", {
	description = "Green Asphalt Shingle",
	drawtype = "mesh",
	mesh = "twelve-twelve.obj",
	tiles = {"myroofs_asphalt_shingle_green.png"},
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
	output = "myroofs:asphalt_shingle_green 1",
	recipe = {
		{"myroofs:asphalt_shingle_grey", "",""},
		{"dye:green", "",""},
		{"", "",""},
	}
})
--Green Asphalt ocorner
minetest.register_node("myroofs:asphalt_shingle_green_ocorner", {
	description = "Green Asphalt Shingle Outside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-oc.obj",
	tiles = {"myroofs_asphalt_shingle_green.png"},
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
	output = "myroofs:asphalt_shingle_green_ocorner 5",
	recipe = {
		{"myroofs:asphalt_shingle_green", "",""},
		{"myroofs:asphalt_shingle_green", "myroofs:asphalt_shingle_green",""},
		{"myroofs:asphalt_shingle_green", "myroofs:asphalt_shingle_green",""},
	}
})
--Green Asphalt icorner
minetest.register_node("myroofs:asphalt_shingle_green_icorner", {
	description = "Green Asphalt Shingle Inside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-ic.obj",
	tiles = {"myroofs_asphalt_shingle_green.png"},
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
	output = "myroofs:asphalt_shingle_red_icorner 8",
	recipe = {
		{"myroofs:asphalt_shingle_green", "myroofs:asphalt_shingle_green","myroofs:asphalt_shingle_green"},
		{"myroofs:asphalt_shingle_green", "myroofs:asphalt_shingle_green","myroofs:asphalt_shingle_green"},
		{"myroofs:asphalt_shingle_green", "myroofs:asphalt_shingle_green",""},
	}
})

-- Long slopes ------------------------------------------------------------------------------

--Grey Asphalt Shingle Long
minetest.register_node("myroofs:asphalt_shingle_grey_long", {
	description = "Grey Asphalt Shingle Long",
	drawtype = "mesh",
	mesh = "six-twelve_slope.obj",
	tiles = {"myroofs_asphalt_shingle_grey.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Grey Asphalt Shingle Long Craft
minetest.register_craft({
	output = "myroofs:asphalt_shingle_grey_long 1",
	recipe = {
		{"myroofs:asphalt_shingle_grey", "myroofs:asphalt_shingle_grey",""},
		{"", "",""},
		{"", "",""},
	}
})

--Grey Asphalt Shingle Long Inside Corner
minetest.register_node("myroofs:asphalt_shingle_grey_long_icorner", {
	description = "Grey Asphalt Shingle Long Inside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-ic.obj",
	tiles = {"myroofs_asphalt_shingle_grey.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = icorner_cbox_long,
	selection_box = icorner_cbox_long
})
--Grey Asphalt Shingle Long Inside Corner Craft
minetest.register_craft({
	output = "myroofs:asphalt_shingle_grey_long_icorner 1",
	recipe = {
		{"", "myroofs:asphalt_shingle_grey",""},
		{"myroofs:asphalt_shingle_grey", "","myroofs:asphalt_shingle_grey"},
		{"", "",""},
	}
})

--Grey Asphalt Shingle Long Inside Corner
minetest.register_node("myroofs:asphalt_shingle_grey_long_ocorner", {
	description = "Grey Asphalt Shingle Long Outside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-oc.obj",
	tiles = {"myroofs_asphalt_shingle_grey.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = ocorner_cbox_long,
	selection_box = ocorner_cbox_long
})
--Grey Asphalt Shingle Long Inside Corner Craft
minetest.register_craft({
	output = "myroofs:asphalt_shingle_grey_long_ocorner 1",
	recipe = {
		{"myroofs:asphalt_shingle_grey", "","myroofs:asphalt_shingle_grey"},
		{"", "myroofs:asphalt_shingle_grey",""},
		{"", "",""},
	}
})

--Dark Grey Asphalt Shingle Long
minetest.register_node("myroofs:asphalt_shingle_dark_grey_long", {
	description = "Dark Grey Asphalt Shingle Long",
	drawtype = "mesh",
	mesh = "six-twelve_slope.obj",
	tiles = {"myroofs_asphalt_shingle_dark_grey.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Dark Grey Asphalt Shingle Long Craft
minetest.register_craft({
	output = "myroofs:asphalt_shingle_dark_grey_long 1",
	recipe = {
		{"myroofs:asphalt_shingle_dark_grey", "myroofs:asphalt_shingle_dark_grey",""},
		{"", "",""},
		{"", "",""},
	}
})

--Dark Grey Asphalt Shingle Long Inside Corner
minetest.register_node("myroofs:asphalt_shingle_dark_grey_long_icorner", {
	description = "Dark Grey Asphalt Shingle Long Inside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-ic.obj",
	tiles = {"myroofs_asphalt_shingle_dark_grey.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = icorner_cbox_long,
	selection_box = icorner_cbox_long
})
--Dark Grey Asphalt Shingle Long Inside Corner Craft
minetest.register_craft({
	output = "myroofs:asphalt_shingle_dark_grey_long_icorner 1",
	recipe = {
		{"", "myroofs:asphalt_shingle_dark_grey",""},
		{"myroofs:asphalt_shingle_dark_grey", "","myroofs:asphalt_shingle_dark_grey"},
		{"", "",""},
	}
})

--Dark Grey Asphalt Shingle Long Inside Corner
minetest.register_node("myroofs:asphalt_shingle_dark_grey_long_ocorner", {
	description = "Dark Grey Asphalt Shingle Long Outside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-oc.obj",
	tiles = {"myroofs_asphalt_shingle_dark_grey.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = ocorner_cbox_long,
	selection_box = ocorner_cbox_long
})
--Dark Grey Asphalt Shingle Long Inside Corner Craft
minetest.register_craft({
	output = "myroofs:asphalt_shingle_dark_grey_long_ocorner 1",
	recipe = {
		{"myroofs:asphalt_shingle_dark_grey", "","myroofs:asphalt_shingle_dark_grey"},
		{"", "myroofs:asphalt_shingle_dark_grey",""},
		{"", "",""},
	}
})

--Red Asphalt Shingle Long
minetest.register_node("myroofs:asphalt_shingle_red_long", {
	description = "Red Asphalt Shingle Long",
	drawtype = "mesh",
	mesh = "six-twelve_slope.obj",
	tiles = {"myroofs_asphalt_shingle_red.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Red Asphalt Shingle Long Craft
minetest.register_craft({
	output = "myroofs:asphalt_shingle_red_long 1",
	recipe = {
		{"myroofs:asphalt_shingle_red", "myroofs:asphalt_shingle_red",""},
		{"", "",""},
		{"", "",""},
	}
})

--Red Asphalt Shingle Long Inside Corner
minetest.register_node("myroofs:asphalt_shingle_red_long_icorner", {
	description = "Red Asphalt Shingle Long Inside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-ic.obj",
	tiles = {"myroofs_asphalt_shingle_red.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = icorner_cbox_long,
	selection_box = icorner_cbox_long
})
--Red Asphalt Shingle Long Inside Corner Craft
minetest.register_craft({
	output = "myroofs:asphalt_shingle_red_long_icorner 1",
	recipe = {
		{"", "myroofs:asphalt_shingle_red",""},
		{"myroofs:asphalt_shingle_red", "","myroofs:asphalt_shingle_red"},
		{"", "",""},
	}
})

--Red Asphalt Shingle Long Inside Corner
minetest.register_node("myroofs:asphalt_shingle_red_long_ocorner", {
	description = "Red Asphalt Shingle Long Outside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-oc.obj",
	tiles = {"myroofs_asphalt_shingle_red.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = ocorner_cbox_long,
	selection_box = ocorner_cbox_long
})
--Red Asphalt Shingle Long Inside Corner Craft
minetest.register_craft({
	output = "myroofs:asphalt_shingle_red_long_ocorner 1",
	recipe = {
		{"myroofs:asphalt_shingle_red", "","myroofs:asphalt_shingle_red"},
		{"", "myroofs:asphalt_shingle_red",""},
		{"", "",""},
	}
})

--Green Asphalt Shingle Long
minetest.register_node("myroofs:asphalt_shingle_green_long", {
	description = "Green Asphalt Shingle Long",
	drawtype = "mesh",
	mesh = "six-twelve_slope.obj",
	tiles = {"myroofs_asphalt_shingle_green.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Green Asphalt Shingle Long Craft
minetest.register_craft({
	output = "myroofs:asphalt_shingle_green_long 1",
	recipe = {
		{"myroofs:asphalt_shingle_green", "myroofs:asphalt_shingle_green",""},
		{"", "",""},
		{"", "",""},
	}
})

--Green Asphalt Shingle Long Inside Corner
minetest.register_node("myroofs:asphalt_shingle_green_long_icorner", {
	description = "Green Asphalt Shingle Long Inside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-ic.obj",
	tiles = {"myroofs_asphalt_shingle_green.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = icorner_cbox_long,
	selection_box = icorner_cbox_long
})
--Green Asphalt Shingle Long Inside Corner Craft
minetest.register_craft({
	output = "myroofs:asphalt_shingle_green_long_icorner 1",
	recipe = {
		{"", "myroofs:asphalt_shingle_green",""},
		{"myroofs:asphalt_shingle_green", "","myroofs:asphalt_shingle_green"},
		{"", "",""},
	}
})

--Green Asphalt Shingle Long Inside Corner
minetest.register_node("myroofs:asphalt_shingle_green_long_ocorner", {
	description = "Green Asphalt Shingle Long Outside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-oc.obj",
	tiles = {"myroofs_asphalt_shingle_green.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = ocorner_cbox_long,
	selection_box = ocorner_cbox_long
})
--Green Asphalt Shingle Long Inside Corner Craft
minetest.register_craft({
	output = "myroofs:asphalt_shingle_green_long_ocorner 1",
	recipe = {
		{"myroofs:asphalt_shingle_green", "","myroofs:asphalt_shingle_green"},
		{"", "myroofs:asphalt_shingle_green",""},
		{"", "",""},
	}
})


--Grey Round Asphalt Shingle Long
minetest.register_node("myroofs:asphalt_shingle_grey_round_long", {
	description = "Grey Round Asphalt Shingle Long",
	drawtype = "mesh",
	mesh = "six-twelve_slope.obj",
	tiles = {"myroofs_asphalt_shingle_grey_round.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Grey Round Asphalt Shingle Long Craft
minetest.register_craft({
	output = "myroofs:asphalt_shingle_grey_round_long 1",
	recipe = {
		{"myroofs:asphalt_shingle_grey", "","myroofs:asphalt_shingle_grey"},
		{"", "myroofs:asphalt_shingle_grey",""},
		{"", "",""},
	}
})

--Grey Round Asphalt Shingle Long Inside Corner
minetest.register_node("myroofs:asphalt_shingle_grey_round_long_icorner", {
	description = "Grey Round Asphalt Shingle Long Inside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-ic.obj",
	tiles = {"myroofs_asphalt_shingle_grey_round.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = icorner_cbox_long,
	selection_box = icorner_cbox_long
})
--Grey Round Asphalt Shingle Long Inside Corner Craft
minetest.register_craft({
	output = "myroofs:asphalt_shingle_grey_round_long_icorner 1",
	recipe = {
		{"", "myroofs:asphalt_shingle_grey",""},
		{"myroofs:asphalt_shingle_grey", "","myroofs:asphalt_shingle_grey"},
		{"", "",""},
	}
})

--Grey Round Asphalt Shingle Long Inside Corner
minetest.register_node("myroofs:asphalt_shingle_grey_round_long_ocorner", {
	description = "Grey Round Asphalt Shingle Long Outside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-oc.obj",
	tiles = {"myroofs_asphalt_shingle_grey_round.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = ocorner_cbox_long,
	selection_box = ocorner_cbox_long
})
--Grey Round Asphalt Shingle Long Inside Corner Craft
minetest.register_craft({
	output = "myroofs:asphalt_shingle_grey_round_long_ocorner 1",
	recipe = {
		{"myroofs:asphalt_shingle_grey", "","myroofs:asphalt_shingle_grey"},
		{"", "myroofs:asphalt_shingle_grey",""},
		{"", "",""},
	}
})

--Dark Grey Round Asphalt Shingle Long
minetest.register_node("myroofs:asphalt_shingle_dark_grey_round_long", {
	description = "Dark Grey Round Asphalt Shingle Long",
	drawtype = "mesh",
	mesh = "six-twelve_slope.obj",
	tiles = {"myroofs_asphalt_shingle_dark_grey_round.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Dark Grey Round Asphalt Shingle Long Craft
minetest.register_craft({
	output = "myroofs:asphalt_shingle_dark_grey_round_long 1",
	recipe = {
		{"myroofs:asphalt_shingle_dark_grey", "","myroofs:asphalt_shingle_dark_grey"},
		{"", "myroofs:asphalt_shingle_dark_grey",""},
		{"", "",""},
	}
})

--Dark Grey Round Asphalt Shingle Long Inside Corner
minetest.register_node("myroofs:asphalt_shingle_dark_grey_round_long_icorner", {
	description = "Dark Grey Round Asphalt Shingle Long Inside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-ic.obj",
	tiles = {"myroofs_asphalt_shingle_dark_grey_round.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = icorner_cbox_long,
	selection_box = icorner_cbox_long
})
--Dark Grey Round Asphalt Shingle Long Inside Corner Craft
minetest.register_craft({
	output = "myroofs:asphalt_shingle_dark_grey_round_long_icorner 1",
	recipe = {
		{"", "myroofs:asphalt_shingle_dark_grey_round",""},
		{"myroofs:asphalt_shingle_dark_grey_round", "","myroofs:asphalt_shingle_dark_grey_round"},
		{"", "",""},
	}
})

--Dark Grey Round Asphalt Shingle Long Inside Corner
minetest.register_node("myroofs:asphalt_shingle_dark_grey_round_long_ocorner", {
	description = "Dark Grey Round Asphalt Shingle Long Outside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-oc.obj",
	tiles = {"myroofs_asphalt_shingle_dark_grey_round.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = ocorner_cbox_long,
	selection_box = ocorner_cbox_long
})
--Dark Grey Round Asphalt Shingle Long Inside Corner Craft
minetest.register_craft({
	output = "myroofs:asphalt_shingle_dark_grey_round_long_ocorner 1",
	recipe = {
		{"myroofs:asphalt_shingle_dark_grey_round", "","myroofs:asphalt_shingle_dark_grey_round"},
		{"", "myroofs:asphalt_shingle_dark_grey_round",""},
		{"", "",""},
	}
})
