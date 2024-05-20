extends CharacterBody2D
@onready var static_body_2d = $"../StaticBody2D"
@onready var label = $Label

const SPEED = 100.0
const JUMP_VELOCITY = -400.0
var pos = Vector2(30,20)
var fullpos = str(position)

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	fullpos = str(position)
	label.text = fullpos
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	#if Input.is_action_just_pressed("Jump") ||  Input.is_action_just_pressed("ui_accept"):
		#velocity.y = JUMP_VELOCITY
		
		
	if  Input.is_action_pressed("ui_right"):
		position += Vector2(20,0)
	if  Input.is_action_pressed("ui_left"):
		position += Vector2(-20,0)
	if  Input.is_action_pressed("ui_down"):
		position += Vector2(0,20)
	if Input.is_action_pressed("ui_up"):
		position += Vector2(0,-20)
	if Input.is_action_just_pressed("test2"):
		position = pos
	if Input.is_action_just_pressed("test"):
		pos += Vector2(0,20)
		static_body_2d.position = pos 
		
		

	


