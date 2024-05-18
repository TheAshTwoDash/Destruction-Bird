extends CharacterBody2D



const SPEED = 100.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var switch = false

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("Jump") ||  Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY
		get_tree().paused = false
		
	if Input.is_action_just_pressed("Pause") :
		get_tree().paused = true
		
	
	
		
	velocity.x=SPEED
	
	move_and_slide()


