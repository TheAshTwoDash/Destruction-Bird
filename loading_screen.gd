extends Control
var progress = []
var anstring

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	ResourceLoader.load_threaded_get_status("res://node_2d.tscn",progress)
	anstring = int(progress[0]*100)
	$Progress_number.text = str(anstring) + "%"
	if progress[0] == 1:
		var packed = ResourceLoader.load_threaded_get("res://node_2d.tscn")
		get_tree().change_scene_to_packed(packed)
		
