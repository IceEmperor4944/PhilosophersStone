class_name Ingredient extends Area2D

@export var sprite = Sprite2D.new();
#Type name (identifier) of ingredient
var type = ""

#Recipe order will be water earth fire, air 
var m_recipe = [0, 0, 0, 0]



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

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
