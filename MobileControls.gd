extends Control
@onready var bird = $".."
var buttonup
var buttondown
var buttonleft
var buttonright

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if buttonup == true:
		bird.position += Vector2(0,-20)
	if buttondown == true:
		bird.position += Vector2(0,20)
	if buttonright == true:
		bird.position += Vector2(20,0)
	if buttonleft == true:
		bird.position += Vector2(-20,0)

func _on_up_button_down():
	buttonup=true
func _on_down_button_down():
	buttondown = true
func _on_right_button_down():
	buttonright = true
func _on_left_button_down():
	buttonleft = true

func _on_left_button_up():
	buttonleft= false
func _on_right_button_up():
	buttonright = false
func _on_down_button_up():
	buttondown = false
func _on_up_button_up():
	buttonup = false

