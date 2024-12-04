extends Node2D

signal element_created(recipe)

var activeInput = [["water", 0], ["earth", 0], ["fire", 0], ["air", 0]]

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
	activeInput[position] = ["null", 0]
	
	
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
	var foundType = "null"
	
	for type in activeInput:
		nullsInActive += 1
	
	for ingredient in list:
		foundMatch = true
		nullsInRecipe = 0
		for type in activeInput:
			for i in range(4):
				if ingredient[0][i][0] == "null":
					nullsInRecipe += 1
				if type[0] == ingredient[0][i][0]:
					if type[1] == ingredient[0][i][1]:
						foundFromType[i] = true
		for i in range(4):
			if foundFromType == false:
				foundMatch = false
		if nullsInActive != nullsInRecipe:
			foundMatch = false
		if foundMatch:
			foundType = ingredient #this needs to give a key from the dictionary (if it doesn't, find a way to get the key that corresponds to that ingredient
			foundTypeSignal.emit(foundType) #find a way to return the type, and do that HERE
		else:
			foundFromType = [false, false, false, false]
				
	
	
	#for ingredient in list:
		#var tempRecipeTypes = [ingredient[0][0][0], ingredient[0][1][0], ingredient[0][2][0], ingredient[0][3][0]]
		#for type in activeInput:
			#if type[0] in tempRecipeTypes:
				#for i in range(4):
					#if type[0] == ingredient[0][i][0]:
						#if type[1] == ingredient[0][i][1]:
							#numTypes += 1
						#else:
							#foundMatch = false
					#break
					#break
			#else:
				#foundMatch = false
