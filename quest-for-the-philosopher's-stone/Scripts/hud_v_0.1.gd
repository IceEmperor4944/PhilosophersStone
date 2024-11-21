extends CanvasLayer

signal emitHandButtonPressed(pos)

#region Clock Button Functionality
# Change the hour of the game if that functionality is needed
# Or if not just change the tint to make it feel more spooky or more vibrant
#endregion


#region Philosopher's Stone Button Functionality
# Have the icon change based on the current progress
# Possibly have the functionality of when pressed pop up a list of whatever
#endregion


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
