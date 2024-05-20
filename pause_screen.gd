extends Control
@onready var canvas_layer = $".."
@onready var pause = $"../pause"

func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS

func _process(delta):
	if Input.is_action_just_pressed("Pause") && !get_tree().paused:
		Pause()
	elif Input.is_action_just_pressed("Pause") && get_tree().paused:
		Resume()
	
		Pause()
func Pause():
	get_tree().paused = true
	show()
	
func Resume():
	print("game should continue now")
	get_tree().paused = false
	hide()


func _on_continue_pressed() :
	Resume()
	pass # Replace with function body.
func _on_pause_pressed():
	 ##Remove this later please
	Pause()


func _on_restart_pressed():
	pass # Replace with function body.


func _on_quit_pressed():
	
	pass # Replace with function body.



