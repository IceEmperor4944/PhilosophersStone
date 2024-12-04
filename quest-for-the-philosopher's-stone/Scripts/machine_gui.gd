extends Control
@onready var v1 = $VSlider
@onready var v2 = $VSlider2
@onready var v3 = $VSlider3
@onready var v4 = $VSlider4

@onready var l1 = $Label
@onready var l2 = $Label2
@onready var l3 = $Label3
@onready var l4 = $Label4

signal onSliderMoved(value, position)
signal onIngredientAdded(type, position)
signal combineIngredients


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Pull reference of AlchemyTable
	#AlchemyTable.ActiveInput = Array of Arrays (String Float)
	
	#activeinput[0][0] = water's name
	#activeinput[0][1] = water's float
	
	#Local Array = Default setup of AlchemyTable.ActiveInput
	
	pass # Replace with function body.


func _on_v_slider_value_changed(value: float) -> void:
	l1.text = str(v1.value)
	#Look at local array using the index name which is ingredient name
	#change the [0][1] to value
	onSliderMoved.emit(value, 0)
	#Sends signal to alchemy table to update slider value


func _on_v_slider_2_value_changed(value: float) -> void:
	l2.text = str(v2.value)
	#change the [1][1] to value
	onSliderMoved.emit(value, 1)

func _on_v_slider_3_value_changed(value: float) -> void:
	l3.text = str(v3.value)
	#change the [2][1] to value
	onSliderMoved.emit(value, 2)

func _on_v_slider_4_value_changed(value: float) -> void:
	l4.text = str(v4.value)
	#change the [3][1] to value
	onSliderMoved.emit(value, 3)

func _on_texture_button_button_down() -> void:
	#Output Result
	combineIngredients.emit()
	#If valid result
	#check if result already in array
	#if not add to array and update inventory
	
	#Reset Sliders
	v1.value=0
	v2.value=0
	v3.value=0
	v4.value=0

	pass # Replace with function body.
