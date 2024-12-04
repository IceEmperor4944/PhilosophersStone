class_name Spawner extends Ingredient 

#have objects in display in an arrayS

#@export var sprite = Sprite2D.new();

var screen_size;
var has_mouse:bool = false;

@onready var im = load("res://Scripts/ingredient_manager.gd").new() as IngredientManager;
var list;

var spritePath = "";

signal onClickReleased(typeName)

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size;
	list = im.list
	type = "fire"
	#spritePath = "res://Assets/Magical/spr_stroked_potion_testtube_blue.png"
	#spritePath = 
	$Sprite2D.texture = load(list[type][2])
	position = Vector2(50, 500)
	
func _input(event):
	if event is InputEventMouseButton:
		if Input.is_action_pressed("pick_up") && (get_global_mouse_position().x <= $Sprite2D.global_position.x + $Sprite2D.get_parent().position.x/10) && (get_global_mouse_position().x >= $Sprite2D.global_position.x - $Sprite2D.get_parent().position.x /10):
			if (get_global_mouse_position().y <= $Sprite2D.global_position.y + $Sprite2D.get_parent().position.y/5) && (get_global_mouse_position().y >= $Sprite2D.global_position.y - $Sprite2D.get_parent().position.y /5):
				ingredient.position = position;
				has_mouse = true;
		elif (Input.is_action_just_released("pick_up")):
			has_mouse = false;
			onClickReleased.emit(type)
				
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if (has_mouse):
		position = get_global_mouse_position();
	

func _on_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	
	pass # Replace with function body.
