class_name IngredientManager extends Node2D

var ingredient_scene = load("res://Test_Ry/Test.tscn") as PackedScene
@onready var ingredient = load("res://Test_Ry/ingredient_test.gd").new() as Ingredient;

var list = {
	"water" = [[1, 0, 0, 0], "res://Assets/Magical/spr_stroked_potion_testtube_blue.png"],
	"earth" = [[0, 1, 0, 0], "res://Assets/Magical/spr_stroked_potion_testtube_green.png"],
	"fire" = [[0, 0, 1, 0], "res://Assets/Magical/spr_stroked_potion_testtube_red.png"],
	"air" = [[0, 0, 0, 1], "res://Assets/Magical/spr_stroked_potion_testtube_cyan.png"],
	"basicPotion" = [[0.5, 0.5, 0, 0], "res://Assets/Magical/spr_stroked_potion_purple.png"],
	"philosophersStone" = [[0.25, 0.25, 0.5, 0], "res://Assets/Magical/spr_stroked_potion_yellow.png"]

}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


#Enter name of ingredient (not capitalized) as type
func AssignIngredient(_type, _ingredient):
	_ingredient = Ingredient.new();
	if _type in list: 
		_ingredient.AssignType(_type)
		_ingredient.AssignRecipe(list[_type][0])
		_ingredient.AssignSprite(list[_type][1])
	else:
		_ingredient.AssignType("Error")
	return _ingredient


#if ingredient type does not exist, then ingredient type will be "Error"
#Additionally, if type does not exist, all other fields will be empty
func CreateIngredient(type):
	ingredient = Ingredient.new();
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
