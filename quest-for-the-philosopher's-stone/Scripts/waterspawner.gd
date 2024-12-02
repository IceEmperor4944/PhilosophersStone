extends Ingredient
class_name Spawner 

var screen_size;
var has_mouse:bool = false;

func _input(event):
	if event is InputEventMouseButton:
		if Input.is_action_pressed("pick_up") && (get_global_mouse_position().x <= $Sprite2D.global_position.x + $Sprite2D.get_parent().position.x/10) && (get_global_mouse_position().x >= $Sprite2D.global_position.x - $Sprite2D.get_parent().position.x /10):
			if (get_global_mouse_position().y <= $Sprite2D.global_position.y + $Sprite2D.get_parent().position.y/5) && (get_global_mouse_position().y >= $Sprite2D.global_position.y - $Sprite2D.get_parent().position.y /5):
				ingredient.position = position;

				has_mouse = true;
		elif (Input.is_action_just_released("pick_up")):
			has_mouse = false;
# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size;

				
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	
	if (has_mouse):
		position = get_global_mouse_position();
