extends Node2D
@onready var tower = $Tower
@onready var bird = $Bird

func _ready():
	
	pass # Replace with function body.


func _process(delta):
	if BuildingTrack.score == -1:
		BuildingTrack.score = 0
		for i in range(0,5):
			add_child(tower.duplicate())

	if BuildingTrack.alife == false:
		BuildingTrack.alife = true
		BuildingTrack.scene_reset()

func _on_tower_tree_entered():

	pass # Replace with function body.
