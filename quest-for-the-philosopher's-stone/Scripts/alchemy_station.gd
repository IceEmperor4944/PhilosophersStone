extends Area2D

signal element_created(recipe)

var activeInput = [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]

var numSlots = 4 #number of elements in a recipe

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
# Ready to attach to a signal
# Recieves a signal with arguments(recipe, position)
# Where recipe is the recipe of the element/potion that is being added
# And position is which part of the array it is being added to
	# Each position in the array will correspond to exactly one part of the alchemy table (where you can place elements into it)
func on_add_ingredient(recipe, position):
	activeInput[position] = recipe

# ready to attach to necessary signal
# for use when an ingredient is removed from the table BUT IS NOT REPLACED
func on_ingredient_removed(position):
	activeInput[position] = [0, 0, 0, 0]
	
# ready to attach to a signal
# for use when alchemy table is activated to combine what it currently on it
func on_Combine_Ingredients():
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
	
	element_created.emit(newRecipe)
	#return newRecipe

# please input RECIPE of ingredient, NOT name
# This function is likely obsolete
#func AddInput(recipe):
#	var success = false
#	for element in activeInput:
#		if element == [0, 0, 0, 0]:
#			element = recipe
#			success = true
#			break
#	return success
	
# please input RECIPE of ingredient, NOT name
# This function is likely obsolete
#func RemoveInput(recipe):
#	var success = false
#	for element in activeInput:
#		if element == recipe:
#			element = [0, 0, 0, 0]
#			success = true
#			break
#	return success
	
	# please input RECIPE of ingredient, NOT name
	# If remove recipe is known, and add recipe is not, please enter [0, 0, 0, 0] for add recipe
	# This function is likely obsolete
#func SwapInput(addRecipe = [0, 0, 0, 0], removeRecipe = [0, 0, 0, 0]):
#	var success = false
#	for element in activeInput:
#		if element == removeRecipe:
#			element = addRecipe
#			success = true
#			break
#	return success
	

		
