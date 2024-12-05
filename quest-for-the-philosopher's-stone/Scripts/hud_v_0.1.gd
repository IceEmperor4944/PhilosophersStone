extends CanvasLayer

signal emitHandButtonPressed(pos)

#region Settings Button Functionality
func _on_settings_btn_toggled(toggled_on: bool):
	$SettingsMenu.visible = toggled_on
#endregion

#region Hand Button Testing Functionality
func _on_hand_btn_button_down() -> void:
	var pos = DisplayServer.mouse_get_position()
	emitHandButtonPressed.emit(pos)
#endregion

#region Settings Menu Functionality
func _on_new_game_btn_pressed():
	get_tree().change_scene_to_file("res://Scenes/ExampleMain.tscn")
#endregion
