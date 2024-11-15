class_name Spawner extends Area2D

@export var speed = 400;
var ingredient_scene = load("res://Test_Ry/Test.tscn") as PackedScene;
#Type name (identifier) of ingredient
var type = ""
#Recipe order will be water earth fire, air 
var recipe = [0, 0, 0, 0]
var screen_size;
var has_mouse:bool = false;
var ingredient_manager_script;
@onready var spawner = Spawner;
@onready var sprite = $Sprite2D;
@onready var label = $RichTextLabel;

func SetSprite2D(anim):
	sprite = anim;

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size;
	ingredient_manager_script = load("res://Test_Ry/ingredient_manager_test.gd").new();
	
func AssignType(name):
	type = name


func AssignRecipe(recipe):
	var i = 0;
	
	for element in recipe:
		recipe[i] = element
		i += 1
		
#"Type" here is for what type of ingredient is being assigned
func AssignSprite(spritePathString):
	self.SetSprite2D(load(spritePathString));
	
	
func _input(event):
	if event is InputEventMouseButton:
		if Input.is_action_pressed("pick_up") && (get_global_mouse_position().x <= $Sprite2D.global_position.x + $Sprite2D.get_parent().position.x/20) && (get_global_mouse_position().x >= $Sprite2D.global_position.x - $Sprite2D.get_parent().position.x / 20):
			if (get_global_mouse_position().y <= $Sprite2D.global_position.y + $Sprite2D.get_parent().position.y/5) && (get_global_mouse_position().y >= $Sprite2D.global_position.y - $Sprite2D.get_parent().position.y /5):
				var spawner = Spawner.new();
				spawner.AssignSprite("res://Assets/Magical/spr_stroked_potion_cyan.png");
				spawner.position = position;
				spawner.has_mouse = false;
				has_mouse = true;
				#spawn a projectile
				var bullet = ingredient_scene.instantiate();
				add_sibling(get_tree().get_root().get_node("Ingredient_Manager_Test"));
				label.clear();
				label.add_text("Clicked!");
		elif (Input.is_action_just_released("pick_up")):
			has_mouse = false;
			label.clear();
			label.add_text("Not Clicked!");
				
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var velocity = Vector2.ZERO
	
	if (has_mouse):
		position = get_global_mouse_position();
	
		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
