extends Node2D

signal element_created(recipe)

var activeInput = [["water", 0.0], ["earth", 0.0], ["fire", 0.0], ["air", 0.0]]
#var activeInput = [["fire", 0.6], ["earth", 0.4], ["salt", 0.0], ["bismuth", 0.0]] #This is for testing purposes


var numSlots = 24 #number of elements in a recipe

#im is short for ingredient manager
@onready var im = load("res://Scripts/ingredient_manager.gd").new() as IngredientManager;
var list;

signal foundTypeSignal(foundTypeName)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	list = im.list



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	


# ready to attach to necessary signal
# for use when an ingredient is removed from the table BUT IS NOT REPLACED
func on_ingredient_removed(position):
	activeInput[position] = ["none", 0]
	
	
#changes the percentage of the ingredient that is being adjusted
#percentage is the new percentage 
#position is the position on the alchemy table
#Don't get position wrong or else the percentage will be changed for the wrong ingredient
func _on_machine_on_slider_moved(value: Variant, position: Variant) -> void:
	activeInput[position][1] = value
	
	
# Recieves a signal with arguments(type, position)
# Where type is the name of the element/potion that is being added
# And position is which part of the array it is being added to
	# Each position in the array will correspond to exactly one part of the alchemy table (where you can place elements into it)
func _on_ingredient_on_ingredient_added(type: Variant, position: Variant) -> void:
	activeInput[position] = [type, 0]

#likely not in use anymore
func _on_machine_on_ingredient_added(type: Variant, position: Variant) -> void:
	pass
	#activeInput[position] = [type, 0]

	
	#DO NOT FORGET to add a fuction to change ratio of amount each element in the table
	
	

# for use when alchemy table is activated to combine what it currently on it
func _on_machine_combine_ingredients() -> void:
	#nullsInRecipe and nullsInActive record the number of nulls to compair at the end
	#Because otherwise, certain combinations could probably return a false positive
	var nullsInRecipe = 0
	var nullsInActive = 0
	var foundFromType = [false, false, false, false]
	var foundMatch = false
	var foundType = "none"
	
	for i in range(4):
		if activeInput[i][0] == "none" || activeInput[i][1] == 0:
			nullsInActive += 1
	
	for ingredient in list:
		foundMatch = true
		nullsInRecipe = 0
		foundFromType = [false, false, false, false]
		foundType = "none"
		#for type in activeInput:
		for j in range(4):
			if list[ingredient][0][j] == "none":
					nullsInRecipe += 1
			for i in range(4):
				#if ingredient[0][i][0] == "null":
				#if list[ingredient][0][i] == "none":
					#nullsInRecipe += 1
				#if type[0] == list[ingredient][0][i]:
				if activeInput[j][0] == list[ingredient][0][i]:
					#print(activeInput[j][0])
					#print(list[ingredient][0][i])
					if activeInput[j][1] == list[ingredient][1][i]:
						#print(activeInput[j][1] == list[ingredient][1][i])
						foundFromType[i] = true
				#elif type[1] == 0:
				elif activeInput[j][1] == 0:
					if list[ingredient][0][i] == "none":
						foundFromType[i] = true
		
		for i in range(4):
			if foundFromType[i] == false:
				foundMatch = false
		if nullsInActive != nullsInRecipe:
			#print(ingredient)
			#print(nullsInRecipe)
			foundMatch = false
		if foundMatch:
			foundType = ingredient #this needs to give a key from the dictionary (if it doesn't, find a way to get the key that corresponds to that ingredient
			foundTypeSignal.emit(foundType) #find a way to return the type, and do that HERE
			#print(foundType)
