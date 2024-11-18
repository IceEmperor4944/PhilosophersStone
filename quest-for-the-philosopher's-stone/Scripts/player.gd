extends Area2D
@export var speed = 400;
var screen_size


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size

var has_mouse:bool = false;

func _input(event):
	if event is InputEventMouseButton:
		
		if Input.is_action_pressed("pick_up") && (get_global_mouse_position().x <= $AnimatedSprite2D.global_position.x + $AnimatedSprite2D.get_parent().position.x/20) && (get_global_mouse_position().x >= $AnimatedSprite2D.global_position.x - $AnimatedSprite2D.get_parent().position.x / 20):
			if (get_global_mouse_position().y <= $AnimatedSprite2D.global_position.y + $AnimatedSprite2D.get_parent().position.y/5) && (get_global_mouse_position().y >= $AnimatedSprite2D.global_position.y - $AnimatedSprite2D.get_parent().position.y /5):
				has_mouse = true;
				$RichTextLabel.clear();
				$RichTextLabel.add_text("Clicked!");
		elif (Input.is_action_just_released("pick_up")):
			has_mouse = false;
			$RichTextLabel.clear();
			$RichTextLabel.add_text("Not Clicked!");
				
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity = Vector2.ZERO
	
	if (has_mouse):
		position = get_global_mouse_position();
			
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
