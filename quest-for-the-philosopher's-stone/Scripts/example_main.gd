extends Node2D
var IngredientSpawnedScene : PackedScene = preload("res://Scenes/ingredient_spawned.tscn")
var entered1 = false
var entered2 = false
var entered3 = false
var entered4 = false

#region Ready and Update
func _ready() -> void:
	pass

func _process(delta: float) -> void:
	###if entered && Input.mouseclick ==false
	
	pass
#endregion
func _on_hud_emit_hand_button_pressed() -> void:
	var instance = IngredientSpawnedScene.instantiate()
	add_child(instance)

func _on_slider_area_1_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	entered1 = true

func _on_slider_area_1_area_shape_exited(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	entered1 = false
