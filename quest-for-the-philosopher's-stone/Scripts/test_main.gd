extends Node2D

@export var scene : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_hud_emit_hand_button_pressed(pos: Variant) -> void:
	var this_scene = scene.instantiate();
	add_child(this_scene);