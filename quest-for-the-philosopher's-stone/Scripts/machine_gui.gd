extends Control
@onready var v1 = $VSlider
@onready var v2 = $VSlider2
@onready var v3 = $VSlider3
@onready var v4 = $VSlider4

@onready var l1 = $Label
@onready var l2 = $Label2
@onready var l3 = $Label3
@onready var l4 = $Label4

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


func _on_v_slider_value_changed(value: float) -> void:
	l1.text = str(v1.value)


func _on_v_slider_2_value_changed(value: float) -> void:
	l2.text = str(v2.value)


func _on_v_slider_3_value_changed(value: float) -> void:
	l3.text = str(v3.value)


func _on_v_slider_4_value_changed(value: float) -> void:
	l4.text = str(v4.value)


func _on_texture_button_button_down() -> void:
	#Output Result
	
	#Reset Sliders
	v1.value=0
	v2.value=0
	v3.value=0
	v4.value=0

	pass # Replace with function body.
