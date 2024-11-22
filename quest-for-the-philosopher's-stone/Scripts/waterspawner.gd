extends Ingredient
class_name Spawner 

#have objects in display in an array

@export var speed = 400;
var screen_size;
var has_mouse:bool = false;


@onready var label = $RichTextLabel;

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size;
	
	
func _input(event):
	if event is InputEventMouseButton:
		if Input.is_action_pressed("pick_up") && (get_global_mouse_position().x <= $Sprite2D.global_position.x + $Sprite2D.get_parent().position.x/10) && (get_global_mouse_position().x >= $Sprite2D.global_position.x - $Sprite2D.get_parent().position.x /10):
			if (get_global_mouse_position().y <= $Sprite2D.global_position.y + $Sprite2D.get_parent().position.y/5) && (get_global_mouse_position().y >= $Sprite2D.global_position.y - $Sprite2D.get_parent().position.y /5):
				ingredient.position = position;
				
				has_mouse = true;
				label.clear();
				label.add_text("Clicked!");
		elif (Input.is_action_just_released("pick_up")):
			has_mouse = false;
			label.clear();
			label.add_text("Not Clicked!");
				
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var velocity = Vector2.ZERO
	
	if (has_mouse):
		position = get_global_mouse_position();
		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
