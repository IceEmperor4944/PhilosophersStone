extends Node2D

@export var ingredient_scene: PackedScene

var list = {
	"water" = [[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "res://Assets/Magical/spr_stroked_potion_testtube_blue.png"],
	"earth" = [[0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "res://Assets/Magical/spr_stroked_potion_testtube_green.png"],
	"fire" = [[0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "res://Assets/Magical/spr_stroked_potion_testtube_red.png"],
	"air" = [[0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"ice" = [[0.5, 0, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	
	'ice2' = [["water","air", "none", "none"], [0.5, 0.5, 0, 0], "res:assests"]
	
	#"basicPotion" = [[0.5, 0.5, 0, 0], "res://Assets/Magical/spr_stroked_potion_purple.png"],
	#"philosophersStone" = [[0.25, 0.25, 0.5, 0], "res://Assets/Magical/spr_stroked_potion_yellow.png"]

}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


#Enter name of ingredient (not capitalized) as type, and instance of ingredient as ingredient
func AssignIngredient(type, ingredient):
	if type in list: 
		ingredient.AssignType(type)
		ingredient.AssignRecipe(list[type][0])
		ingredient.AssignSprite(list[type][1])
	else:
		ingredient.AssignType("Error")
	return ingredient


#if ingredient type does not exist, then ingredient type will be "Error"
#Additionally, if type does not exist, all other fields will be empty
func CreateIngredient(type):
	var ingredient = ingredient_scene.instantiate()
	ingredient = $Ingredient
	
	ingredient = AssignIngredient(type, ingredient)
	
	return ingredient


func FindIngredientByRecipe(recipe):
	for type in list:
		if type[1] == recipe:
			return type
	return [-1, -1, -1, -1] #Error
	
	
func FindRecipeByType(type):
	if type in list:
		return type[1]
	else:
		return "Error"
