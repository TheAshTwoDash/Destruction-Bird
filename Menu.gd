extends Control



# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_play_pressed():
	get_tree().change_scene_to_file("res://loading_screen.tscn")
	ResourceLoader.load_threaded_request("res://node_2d.tscn")
	
	pass # Replace with function body.


func _on_settings_pressed():
	pass # Replace with function body.

func _on_quit_pressed():
	get_tree().quit()
	pass # Replace with function body.
