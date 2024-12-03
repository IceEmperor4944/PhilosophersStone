extends Node2D

var rowSize = 5
var colSize = 5
var items = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for x in range(rowSize):
		items.append([])
		for y in range(colSize):
			items[x].append([])
	items[4][4] = "test"
	print(items)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
