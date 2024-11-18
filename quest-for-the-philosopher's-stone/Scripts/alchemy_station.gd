extends Area2D


var activeInput = [[0, 0, 0, 0], [0, 0, 0, 0]]

var numSlots = 4 #number of elements in a recipe

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# please input RECIPE of ingredient, NOT name
func AddInput(recipe):
	var success = false
	for element in activeInput:
		if element == [0, 0, 0, 0]:
			element = recipe
			success = true
			break
	return success
	
# please input RECIPE of ingredient, NOT name

func RemoveInput(recipe):
	var success = false
	for element in activeInput:
		if element == recipe:
			element = [0, 0, 0, 0]
			success = true
			break
	return success
	
# please input RECIPE of ingredient, NOT name
#If remove recipe is known, and add recipe is not, please enter [0, 0, 0, 0] for add recipe
func SwapInput(addRecipe = [0, 0, 0, 0], removeRecipe = [0, 0, 0, 0]):
	var success = false
	for element in activeInput:
		if element == removeRecipe:
			element = addRecipe
			success = true
			break
	return success
	
	
func addActiveIngredients():
	var numTypes = 0
	
	
	#next variables are for each element that can be in the recipe
	var newRecipe = [0, 0, 0, 0]
	
	for type in activeInput:
		if type != [0, 0, 0, 0]:
			numTypes += 1
	
	for i in range(numSlots):
		for j in range(numTypes):
			newRecipe[i] += activeInput[j][i]
		newRecipe[i] /= numTypes
	
	return newRecipe
		
