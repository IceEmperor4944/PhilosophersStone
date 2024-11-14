extends CanvasLayer

#region Clock Button Functionality

func _on_clock_btn_mouse_entered():
	$ClockBtn/ClockInfoPanel.visible = true

func _on_clock_btn_mouse_exited():
	$ClockBtn/ClockInfoPanel.visible = false
#endregion


#region Philosopher's Stone Button Functionality

func _on_philo_stone_btn_mouse_entered():
	$PhiloStoneBtn/PhiloStoneInfoPanel.visible = true

func _on_philo_stone_btn_mouse_exited():
	$PhiloStoneBtn/PhiloStoneInfoPanel.visible = false
#endregion


#region Settings Button Functionality

func _on_settings_btn_mouse_entered():
	$SettingsBtn/SettingsInfoPanel.visible = true

func _on_settings_btn_mouse_exited():
	$SettingsBtn/SettingsInfoPanel.visible = false
#endregion


#region Hand Button Functionality
func _on_hand_btn_mouse_entered():
	$HandBtn/HandInfoPanel.visible =  true
	
func _on_hand_btn_mouse_exited():
	$HandBtn/HandInfoPanel.visible =  false

#endregion


#region Functions


#endregion
