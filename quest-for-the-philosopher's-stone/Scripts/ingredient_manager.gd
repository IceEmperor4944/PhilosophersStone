class_name IngredientManager

@export var list = {
	"water" 	= [["water","none", "none", "none"], 	[1.0, 0.0, 0.0, 0.0], "res://Assets/Sprites/water.png"],
	"earth" 	= [["earth","none", "none", "none"], 	[1.0, 0.0, 0.0, 0.0], "res://Assets/Sprites/earth.png"],
	"fire" 		= [["fire","none", "none", "none"], 	[1.0, 0.0, 0.0, 0.0], "res://Assets/Sprites/fire.png"],
	"air" 		= [["air","none", "none", "none"], 		[1.0, 0.0, 0.0, 0.0], "res://Assets/Sprites/air.png"],
	"ice" 		= [["water","air", "none", "none"], 	[0.5, 0.5, 0.0, 0.0], "res://Assets/Sprites/ice.png"],
	"lava" 		= [["fire","earth", "none", "none"], 	[0.6, 0.4, 0.0, 0.0], "res://Assets/Sprites/lava.png"],
	"life" 		= [["water","earth", "fire", "air"], 	[0.3, 0.3, 0.2, 0.2], "res://Assets/Sprites/life.png"],
	"death" 	= [["water","earth", "fire", "air"], 	[0.2, 0.2, 0.3, 0.3], "res://Assets/Sprites/death.png"],
	"stone"		= [["earth","air", "lava", "none"], 	[0.2, 0.4, 0.4, 0.0], "res://Assets/Sprites/stone.png"],
	"metal" 	= [["stone","fire", "none", "none"], 	[0.5, 0.5, 0.0, 0.0], "res://Assets/Sprites/metal.png"],
	"sand" 		= [["water","air", "stone", "none"], 	[0.3, 0.4, 0.3, 0.0], "res://Assets/Sprites/sand.png"],
	"poison" 	= [["water","death", "none", "none"], 	[0.5, 0.5, 0.0, 0.0], "res://Assets/Sprites/poison.png"],
	"egg" 		= [["life","fire", "none", "none"], 	[0.8, 0.2, 0.0, 0.0], "res://Assets/Sprites/egg.png"],
	"iron" 		= [["air","stone", "metal", "none"], 	[0.2, 0.3, 0.5, 0.0], "res://Assets/Sprites/iron.png"],
	"chalk"		= [["water","life", "sand", "none"], 	[0.3, 0.3, 0.4, 0.0], "res://Assets/Sprites/chalk.png"],
	"gold"		= [["fire","stone", "metal", "sand"], 	[0.2, 0.3, 0.4, 0.1], "res://Assets/Sprites/gold.png"],
	"sulfur"	= [["earth","fire", "stone", "egg"], 	[0.2, 0.2, 0.3, 0.3], "res://Assets/Sprites/sulfur.png"],
	"mercury"	= [["water","metal", "poison", "none"], [0.3, 0.5, 0.2, 0.0], "res://Assets/Sprites/mercury.png"],
	"salt"		= [["water","fire", "stone", "none"], 	[0.4, 0.2, 0.4, 0.0], "res://Assets/Sprites/salt.png"],
	"copper"	= [["air","lava", "stone", "metal"], 	[0.1, 0.2, 0.3, 0.4], "res://Assets/Sprites/copper.png"],
	"tin"		= [["ice","stone", "metal", "none"], 	[0.2, 0.3, 0.5, 0.0], "res://Assets/Sprites/tin.png"],
	"lead"		= [["stone","metal", "poison", "none"],	[0.3, 0.5, 0.2, 0.0], "res://Assets/Sprites/lead.png"],
	"silver"	= [["stone","metal", "gold", "lead"],	[0.3, 0.3, 0.2, 0.2], "res://Assets/Sprites/silver.png"],
	"bismuth"	= [["fire","stone", "copper", "lead"],	[0.2, 0.4, 0.2, 0.2], "res://Assets/Sprites/bismuth.png"],
	"philosophersStone"	= [["sulfur","mercury", "salt", "bismuth"],	[0.3, 0.3, 0.3, 0.1], "res://Assets/Sprites/philosopherStone.png"],
	
	#"basicPotion" = [[0.5, 0.5, 0, 0], "res://Assets/Magical/spr_stroked_potion_purple.png"],
	#"philosophersStone" = [[0.25, 0.25, 0.5, 0], "res://Assets/Magical/spr_stroked_potion_yellow.png"]
}
