extends Node2D

var list = {
	"water" = [[1, 0, 0, 0], "res://Assets/Magical/spr_stroked_potion_testtube_blue.png"],
	"earth" = [[0, 1, 0, 0], "res://Assets/Magical/spr_stroked_potion_testtube_green.png"],
	"fire" = [[0, 0, 1, 0], "res://Assets/Magical/spr_stroked_potion_testtube_red.png"],
	"air" = [[0, 0, 0, 1], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"basicPotion" = [[1, 1, 0, 0], "res://Assets/Magical/spr_stroked_potion_purple.png"],
	"philosophersStone" = [[1, 1, 1, 0], "res://Assets/Magical/spr_stroked_potion_yellow.png"]

}



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


#Enter name of ingredient (not capitalized) as type
func AssignIngredient(type):
	if type in list: 
		$Ingredient.AssignType(type)
		$Ingredient.AssignRecipe(list[type][0])
		$Ingredient.AssignSprite(list[type][1])
