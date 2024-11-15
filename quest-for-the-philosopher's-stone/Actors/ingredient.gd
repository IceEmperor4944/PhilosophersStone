extends Area2D

#Type name (identifier) of ingredient
var type = ""

#Recipe order will be water earth fire, air 
var m_recipe = [0, 0, 0, 0]

#var m_spriteMap = {
#	"1" = $AnimatedSprite2D.sprite_frames.water
#}


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


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
	$AnimatedSprite2D.texture = load(spritePathString);
	
