extends Area2D


var activeInput = ["", ""]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#type means name of ingredient
func AddInput(type):
	var success = false
	for element in activeInput:
		if element == "":
			element = type
			success = true
			break
	return success
	
func RemoveInput(type):
	var success = false
	for element in activeInput:
		if element == type:
			element = ""
			success = true
			break
	return success
	
	
func SwapInput(addType, removeType):
	var success = false
	for element in activeInput:
		if element == removeType:
			element = addType
			success = true
			break
	return success
		
