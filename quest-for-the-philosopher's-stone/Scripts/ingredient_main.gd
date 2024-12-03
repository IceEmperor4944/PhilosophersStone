extends Node2D

@export var scene : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$WaterSpawner._ready() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$WaterSpawner._process(delta)


func _input(event):
	$WaterSpawner._input(event)
	
func _on_hud_emit_hand_button_pressed(pos: Variant) -> void:
	var this_scene = scene.instantiate();
	add_child(this_scene);
