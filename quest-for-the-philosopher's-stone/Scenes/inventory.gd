extends Node2D

const spawner = preload("res://Scenes/Ingredient_Spawned.tscn")

var rowSize = 3
var colSize = 8
var items = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for x in range(rowSize):
		items.append([])
		for y in range(colSize):
			items[x].append([])
	##items[4][4] = "test"
			var instance = spawner.instantiate()
			instance.position = Vector2(x*75,y*75)
			instance.visible = false
			add_child(instance)
			items[x][y] = instance
			
	items[0][0].visible = true
	items[1][0].visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for ingredientInstance in get_children():
		if  ingredientInstance.inUse == false:
			#ingredientInstance.remove_child(ingredientInstance)
			remove_child(ingredientInstance)
