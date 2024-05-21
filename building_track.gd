extends Node
var pos = 0
var score = -1
var alife = true

func scene_reset():
	pos = 0
	score = -1
	get_tree().reload_current_scene()
	
	
