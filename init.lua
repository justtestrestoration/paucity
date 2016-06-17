-- See README.md for licensing and other information.

minetest.register_craft({
	output = 'default:cobble 9',
	recipe = {
		{"default:dirt", "default:dirt", "default:dirt"},
		{"default:dirt", "default:dirt", "default:dirt"},
		{"default:dirt", "default:dirt", "default:dirt"},
	},
})
minetest.register_craft({
	output = 'default:cobble 9',
	recipe = {
		{"default:desert_cobble", "default:desert_cobble", "default:desert_cobble"},
		{"default:desert_cobble", "default:desert_cobble", "default:desert_cobble"},
		{"default:desert_cobble", "default:desert_cobble", "default:desert_cobble"},
	},
})
minetest.register_craft({
	output = 'default:cobble 9',
	recipe = {
		{"default:desert_sand", "default:desert_sand", "default:desert_sand"},
		{"default:desert_sand", "default:desert_sand", "default:desert_sand"},
		{"default:desert_sand", "default:desert_sand", "default:desert_sand"},
	},
})
minetest.register_craft({
	output = 'default:cobble 9',
	recipe = {
		{"default:sand", "default:sand", "default:sand"},
		{"default:sand", "default:sand", "default:sand"},
		{"default:sand", "default:sand", "default:sand"},
	},
})

-- -----------------------------------
-- -------node registration-----------
-- -----------------------------------

--emptymoney
minetest.register_node("paucity:emptymoney", {
	description = "emptymoney",
	tiles = {"emptymoney.png"},
	groups = {choppy=2,dig_immediate=2},
})

--ironmoney
minetest.register_node("paucity:ironmoney", {
	description = "ironmoney",
	tiles = {"ironmoney.png"},
	groups = {choppy=2,dig_immediate=2},
})

--protectmoney
minetest.register_node("paucity:protectmoney", {
	description = "protectmoney",
	tiles = {"protectmoney.png"},
	groups = {choppy=2,dig_immediate=2},
})

---------------
-- <emptymoney>
---------------

--how to craft emptymoney with default:dirt
minetest.register_craft({
	output = 'paucity:emptymoney',
	recipe = {
		{"default:dirt","default:dirt","default:dirt"},
		{"default:dirt","default:dirt","default:dirt"},
		{"","",""},
	}
})

--how to craft emptymoney with default:desert_cobble
minetest.register_craft({
	output = 'paucity:emptymoney',
	recipe = {
		{"default:desert_cobble","default:desert_cobble","default:desert_cobble"},
		{"default:desert_cobble","default:desert_cobble","default:desert_cobble"},
		{"","",""},
	}
})

--how to craft emptymoney with default:desert_sand
minetest.register_craft({
	output = 'paucity:emptymoney',
	recipe = {
		{"default:desert_sand","default:desert_sand","default:desert_sand"},
		{"default:desert_sand","default:desert_sand","default:desert_sand"},
		{"","",""},
	}
})

--how to craft emptymoney with default:sand
minetest.register_craft({
	output = 'paucity:emptymoney',
	recipe = {
		{"default:sand","default:sand","default:sand"},
		{"default:sand","default:sand","default:sand"},
		{"","",""},
	}
})

----------------
-- </emptymoney>
----------------


--how to craft ironmoney
minetest.register_craft({
	output = 'paucity:ironmoney',
	recipe = {
		{"paucity:emptymoney","paucity:emptymoney","paucity:emptymoney"},
		{"paucity:emptymoney","paucity:emptymoney","paucity:emptymoney"},
		{"","",""},
	}
})

--how to craft protectmoney
minetest.register_craft({
	output = 'paucity:protectmoney',
	recipe = {
		{"paucity:ironmoney","paucity:ironmoney","paucity:ironmoney"},
		{"paucity:ironmoney","paucity:ironmoney","paucity:ironmoney"},
		{"","",""},
	}
})


--get 1 iron lump for 1 ironmoney
minetest.register_craft({
	output = 'default:iron_lump',
	recipe = {
		{"paucity:ironmoney","",""},
		{"","",""},
		{"","",""},
	}
})

--get 1 coal for 4 emptymoney
minetest.register_craft({
	output = 'default:coal_lump',
	recipe = {
		{"paucity:emptymoney","paucity:emptymoney",""},
		{"paucity:emptymoney","paucity:emptymoney",""},
		{"","",""},
	}
})

--get 1 default:tree
minetest.register_craft({
	output = 'default:tree',
	recipe = {
		{"paucity:emptymoney","paucity:emptymoney","paucity:emptymoney"},
		{"","",""},
		{"","",""},
	}
})

--get 1 carts:cart
minetest.register_craft({
	output = 'carts:cart',
	recipe = {
		{"","",""},
		{"paucity:emptymoney","","paucity:emptymoney"},
		{"paucity:emptymoney","paucity:emptymoney","paucity:emptymoney"},
	}
})
