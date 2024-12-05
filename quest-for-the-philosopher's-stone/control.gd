extends Control

signal inventoryBtn(name)
#region Ready and Update

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
#endregion


func _on_water_btn_button_down() -> void:
	inventoryBtn.emit("water")


func _on_earth_btn_button_down() -> void:
	inventoryBtn.emit("earth")


func _on_fire_btn_button_down() -> void:
	inventoryBtn.emit("fire")


func _on_air_btn_button_down() -> void:
	pass # Replace with function body.


func _on_ice_btn_button_down() -> void:
	pass # Replace with function body.


func _on_lava_btn_button_down() -> void:
	pass # Replace with function body.


func _on_life_btn_button_down() -> void:
	pass # Replace with function body.


func _on_death_btn_button_down() -> void:
	pass # Replace with function body.


func _on_stone_btn_button_down() -> void:
	pass # Replace with function body.


func _on_metal_btn_button_down() -> void:
	pass # Replace with function body.


func _on_sand_btn_button_down() -> void:
	pass # Replace with function body.


func _on_poison_btn_button_down() -> void:
	pass # Replace with function body.


func _on_egg_btn_button_down() -> void:
	pass # Replace with function body.


func _on_iron_btn_button_down() -> void:
	pass # Replace with function body.


func _on_chalk_btn_button_down() -> void:
	pass # Replace with function body.


func _on_gold_btn_button_down() -> void:
	pass # Replace with function body.


func _on_sulfur_btn_button_down() -> void:
	pass # Replace with function body.


func _on_mercury_btn_button_down() -> void:
	pass # Replace with function body.


func _on_salt_btn_button_down() -> void:
	pass # Replace with function body.


func _on_copper_btn_button_down() -> void:
	pass # Replace with function body.


func _on_tin_btn_button_down() -> void:
	pass # Replace with function body.


func _on_lead_btn_button_down() -> void:
	pass # Replace with function body.


func _on_silver_btn_button_down() -> void:
	pass # Replace with function body.


func _on_bismuth_btn_button_down() -> void:
	pass # Replace with function body.
