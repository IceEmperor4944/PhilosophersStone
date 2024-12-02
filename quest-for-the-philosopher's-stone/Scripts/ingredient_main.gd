extends Node2D

@export var scene : PackedScene

signal onIngredientAdded(type, position)

#This will be a number to signify which area it is in (if any) and will only be changed via signals
var inArea;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	inArea = -1;
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_hud_emit_hand_button_pressed(pos: Variant) -> void:
	var this_scene = scene.instantiate();
	add_child(this_scene);


func _on_water_spawner_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	
	pass # Replace with function body.


func _on_water_spawner_area_shape_exited(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	pass # Replace with function body.

#The below signals are to detect if/when the ingredient is in a location where it can be placed into the alchemy table

func _on_slider_area_1_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	inArea = 0


func _on_slider_area_1_area_shape_exited(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	inArea = -1


func _on_slider_area_2_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	inArea = 1


func _on_slider_area_2_area_shape_exited(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	inArea = -1


func _on_slider_area_3_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	inArea = 2


func _on_slider_area_3_area_shape_exited(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	inArea = -1


func _on_slider_area_4_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	inArea = 3


func _on_slider_area_4_area_shape_exited(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	inArea = -1

#this method gets information to the alchemy table when an ingredient is released within one of the slider areas

func _on_water_spawner_on_click_released(typeName: Variant) -> void:
	if(inArea >= 0 && inArea <= 3):
		onIngredientAdded.emit(typeName, inArea)
