extends Node2D
var IngredientSpawnedNodeReference = preload("res://Scenes/ingredient_spawned.tscn")

#region Ready and Update

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$HUD.emitHandButtonPressed.connect(spawn)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
#endregion
func spawn(pos: Vector2i):
	var instance = IngredientSpawnedNodeReference.instantiate()
	instance.position = pos
	add_child(instance)
