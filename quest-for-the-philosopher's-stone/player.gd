extends Area2D
@export var speed = 400;
var screen_size


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size

func _input(event):
	var isClicked = false;
	if event is InputEventMouseButton:
						
		if (get_global_mouse_position().x <= $AnimatedSprite2D.global_position.x + $AnimatedSprite2D.get_parent().position.x/20) && (get_global_mouse_position().x >= $AnimatedSprite2D.global_position.x - $AnimatedSprite2D.get_parent().position.x / 20):
			position = get_global_mouse_position();
			$RichTextLabel.clear();
			$RichTextLabel.add_text("Clicked!");
			isClicked = true;
		elif Input.is_action_just_released("pick_up"):
			$RichTextLabel.clear();
			$RichTextLabel.add_text("Not Clicked!");
			isClicked = false;
			
		
	
	
		
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity = Vector2.ZERO
	
	
	

	#if position.x > 1:
		#velocity.x += 1
	#if position.x < 1:
		#velocity.x -= 1
	#if position.y > 1:
		#velocity.y += 1
	#if position.y < 1:
		#velocity.y -= 1	
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
