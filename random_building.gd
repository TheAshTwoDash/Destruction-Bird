extends Node
@onready var tower = $"../Tower"

var rng = RandomNumberGenerator.new()

func _ready():
	var temprng
	temprng = rng.randi_range(-150,150)
	tower.position = (Vector2(BuildingTrack.pos,temprng)) 
	BuildingTrack.pos+= 500
	print(BuildingTrack.pos)

func _process(delta):
	if Input.is_action_just_pressed("test"):
		for i in range(0,7):
			add_sibling(tower.duplicate()) 
		
