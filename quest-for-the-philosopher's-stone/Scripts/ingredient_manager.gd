class_name IngredientManager extends Node2D

@export var list = {
	"water" 	= [["water","none", "none", "none"], 	[1.0, 0.0, 0.0, 0.0], "res://Assets/Magical/spr_stroked_potion_testtube_blue.png"],
	"earth" 	= [["earth","none", "none", "none"], 	[1.0, 0.0, 0.0, 0.0], "res://Assets/Magical/spr_stroked_potion_testtube_green.png"],
	"fire" 		= [["fire","none", "none", "none"], 	[1.0, 0.0, 0.0, 0.0], "res://Assets/Magical/spr_stroked_potion_testtube_red.png"],
	"air" 		= [["air","none", "none", "none"], 		[1.0, 0.0, 0.0, 0.0], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"ice" 		= [["water","air", "none", "none"], 	[0.5, 0.5, 0.0, 0.0], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"lava" 		= [["fire","earth", "fire", "none"], 	[0.3, 0.4, 0.3, 0.0], "res://Assets/Magical/spr_stroked_potion_testtube_red.png"],
	"life" 		= [["water","earth", "fire", "air"], 	[0.3, 0.3, 0.2, 0.2], "res://Assets/Magical/spr_stroked_potion_testtube_green.png"],
	"death" 	= [["water","earth", "fire", "air"], 	[0.2, 0.2, 0.3, 0.3], "res://Assets/Magical/spr_stroked_potion_testtube_blue.png"],
	"stone"		= [["earth","air", "lava", "none"], 	[0.2, 0.4, 0.4, 0.0], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"metal" 	= [["stone","fire", "none", "none"], 	[0.5, 0.5, 0.0, 0.0], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"sand" 		= [["water","air", "stone", "none"], 	[0.3, 0.4, 0.3, 0.0], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"poison" 	= [["water","death", "none", "none"], 	[0.5, 0.5, 0.0, 0.0], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"egg" 		= [["life","fire", "life", "none"], 	[0.4, 0.2, 0.4, 0.0], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"iron" 		= [["air","stone", "metal", "none"], 	[0.2, 0.3, 0.5, 0.0], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"chalk"		= [["water","life", "sand", "none"], 	[0.3, 0.3, 0.4, 0.0], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"gold"		= [["fire","stone", "metal", "sand"], 	[0.2, 0.3, 0.4, 0.1], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"sulfur"	= [["earth","fire", "stone", "egg"], 	[0.2, 0.2, 0.3, 0.3], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"mercury"	= [["water","metal", "poison", "none"], [0.3, 0.5, 0.2, 0.0], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"salt"		= [["water","fire", "stone", "none"], 	[0.4, 0.2, 0.4, 0.0], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"copper"	= [["air","lava", "stone", "metal"], 	[0.1, 0.2, 0.3, 0.4], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"tin"		= [["ice","stone", "metal", "none"], 	[0.2, 0.3, 0.5, 0.0], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"lead"		= [["stone","metal", "poison", "none"],	[0.3, 0.5, 0.2, 0.0], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"silver"	= [["stone","metal", "gold", "lead"],	[0.3, 0.3, 0.2, 0.2], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"bismuth"	= [["fire","stone", "copper", "lead"],	[0.2, 0.4, 0.2, 0.2], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	
	#"basicPotion" = [[0.5, 0.5, 0, 0], "res://Assets/Magical/spr_stroked_potion_purple.png"],
	#"philosophersStone" = [[0.25, 0.25, 0.5, 0], "res://Assets/Magical/spr_stroked_potion_yellow.png"]
}
