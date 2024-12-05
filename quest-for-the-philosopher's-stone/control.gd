extends Control

signal inventoryBtn(name)
#region Ready and Update

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
#endregion


func _on_water_btn_button_down() -> void:
	inventoryBtn.emit("water")


func _on_earth_btn_button_down() -> void:
	inventoryBtn.emit("earth")


func _on_fire_btn_button_down() -> void:
	inventoryBtn.emit("fire")


func _on_air_btn_button_down() -> void:
	inventoryBtn.emit("air")


func _on_ice_btn_button_down() -> void:
	inventoryBtn.emit("ice")


func _on_lava_btn_button_down() -> void:
	inventoryBtn.emit("lava")


func _on_life_btn_button_down() -> void:
	inventoryBtn.emit("life")


func _on_death_btn_button_down() -> void:
	inventoryBtn.emit("death")


func _on_stone_btn_button_down() -> void:
	inventoryBtn.emit("stone")


func _on_metal_btn_button_down() -> void:
	inventoryBtn.emit("metal")


func _on_sand_btn_button_down() -> void:
	inventoryBtn.emit("sand")


func _on_poison_btn_button_down() -> void:
	inventoryBtn.emit("poison")


func _on_egg_btn_button_down() -> void:
	inventoryBtn.emit("egg")


func _on_iron_btn_button_down() -> void:
	inventoryBtn.emit("iron")


func _on_chalk_btn_button_down() -> void:
	inventoryBtn.emit("chalk")


func _on_gold_btn_button_down() -> void:
	inventoryBtn.emit("gold")


func _on_sulfur_btn_button_down() -> void:
	inventoryBtn.emit("sulfur")


func _on_mercury_btn_button_down() -> void:
	inventoryBtn.emit("mercury")


func _on_salt_btn_button_down() -> void:
	inventoryBtn.emit("salt")


func _on_copper_btn_button_down() -> void:
	inventoryBtn.emit("copper")


func _on_tin_btn_button_down() -> void:
	inventoryBtn.emit("tin")


func _on_lead_btn_button_down() -> void:
	inventoryBtn.emit("lead")


func _on_silver_btn_button_down() -> void:
	inventoryBtn.emit("silver")


func _on_bismuth_btn_button_down() -> void:
	inventoryBtn.emit("bismuth")

func foundAirType():
	$GridContainer/airBtn.visible = true

func foundIceType():
	$GridContainer/iceBtn.visible = true

func foundLavaType():
	$GridContainer/lavaBtn.visible = true

func foundLifeType():
	$GridContainer/lifeBtn.visible = true

func foundDeathType():
	$GridContainer/deathBtn.visible = true

func foundStoneType():
	$GridContainer/stoneBtn.visible = true

func foundMetalType():
	$GridContainer/metalBtn.visible = true

func foundSandType():
	$GridContainer/sandBtn.visible = true

func foundPoisonType():
	$GridContainer/poisonBtn.visible = true

func foundEggType():
	$GridContainer/eggBtn.visible = true

func foundIronType():
	$GridContainer/ironBtn.visible = true

func foundChalkType():
	$GridContainer/chalkBtn.visible = true

func foundGoldType():
	$GridContainer/goldBtn.visible = true

func foundSulfurType():
	$GridContainer/sulfurBtn.visible = true

func foundMercuryType():
	$GridContainer/mercuryBtn.visible = true

func foundSaltType():
	$GridContainer/saltBtn.visible = true

func foundCopperType():
	$GridContainer/copperBtn.visible = true

func foundTinType():
	$GridContainer/tinBtn.visible = true

func foundLeadType():
	$GridContainer/leadBtn.visible = true

func foundSilverType():
	$GridContainer/silverBtn.visible = true

func foundBismuthType():
	$GridContainer/bismuthBtn.visible = true
