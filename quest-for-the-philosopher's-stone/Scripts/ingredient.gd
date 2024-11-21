extends Area2D
class_name Ingredient

@export var sprite = Sprite2D.new();

@onready var ingredient = load("res://Scripts/ingredient.gd").new() as Ingredient;

var type = ""

#Recipe order will be water earth fire, air 
var m_recipe = [0, 0, 0, 0]


func AssignType(name):
	type = name


func AssignRecipe(recipe):
	var i = 0;
	
	for element in recipe:
		m_recipe[i] = element
		i += 1
		
#"Type" here is for what type of ingredient is being assigned
func AssignSprite(spritePathString):
	sprite.texture = load(spritePathString);
	



#Enter name of ingredient (not capitalized) as type
func AssignIngredient(_type, _ingredient):
	_ingredient = Ingredient.new();
	_ingredient.AssignType(_type)
	return _ingredient


#if ingredient type does not exist, then ingredient type will be "Error"
#Additionally, if type does not exist, all other fields will be empty
func CreateIngredient(type):
	AssignIngredient(type, ingredient);
	
	return ingredient


func _on_hand_btn_pressed() -> void:
	var newIngredient = load("res://Scripts/waterspawner.gd").new();
	newIngredient.AssignSprite("res://Assets/Magical/spr_stroked_potion_cyan.png");
	newIngredient.position = get_global_mouse_position();
	newIngredient.add_child($WaterSpawner.get_parent());
	
