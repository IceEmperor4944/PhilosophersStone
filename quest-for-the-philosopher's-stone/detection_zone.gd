extends Node2D

#this variable needs to record if the mouse is currently holding an object
var itemHeld = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# needs to connect to a signal that is emited when an ingredient/potion is currently being held
func on_potion_clicked():
	itemHeld = true
	
# needs to connect to a signal that is emited when an ingredient/potion is released from being held
func on_potion_released():
	itemHeld = false
	
	
# need a function that registers when mouse is inside the area 2D (or maybe just put this in the below function

# need a function that registers/activates when mouse button is just released
# if mouse inside area 2d (above function can be placed here maybe?)
# AND if itemHeld
# find item type, execute comment (such as adding to alchemy table)
	#for example, emit a "ingredient added" signal with the ingredient as the argument for alchemy table to pick up on
