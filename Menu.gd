extends Control
@onready var label = $Label
var progress = []
var anstring

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	ResourceLoader.load_threaded_get_status("res://node_2d.tscn",progress)
	anstring = str(progress[0]*100)
	label.text = anstring
	if progress[0] == 1:
		var packed = ResourceLoader.load_threaded_get("res://node_2d.tscn")
		get_tree().change_scene_to_packed(packed)

func _on_play_pressed():
	
	ResourceLoader.load_threaded_request("res://node_2d.tscn")
	
	pass # Replace with function body.


func _on_settings_pressed():
	pass # Replace with function body.


func _on_quit_pressed():
	get_tree().quit()
	pass # Replace with function body.
