extends Node
@onready var tower = $"../Tower"
var rng = RandomNumberGenerator.new()
@onready var bird = $"../Bird"

func _ready():
	var temprng
	temprng = rng.randi_range(-150,150)
	var BuildingPos = (Vector2(BuildingTrack.pos,temprng)) 
	tower.position = BuildingPos
	BuildingTrack.pos+= 500
	

func _on_score_area_exited(area):
	BuildingTrack.score += 1
	#print(BuildingTrack.score)
	await get_tree().create_timer(0).timeout #stops a weird error that I have no idea how to solve
	add_sibling(tower.duplicate()) #copies the tower then adds it inside of the scene
	await get_tree().create_timer(3).timeout
	queue_free()

func _on_area_2d_2_area_entered(area):
	BuildingTrack.alife = false
	bird.queue_free()
	pass # Replace with function body.
