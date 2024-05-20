extends StaticBody2D
@onready var static_body_2d_2 = $"../StaticBody2D2"
@onready var tower = $"../Tower"

#var count = 100 + pos
#var fullpower = (Vector2(,0)) 

func _ready():
	translate(Vector2(BuildingTrack.pos,0))


# Called when the node enters the scene tree for the first time.

func _process(delta):
	if Input.is_action_just_pressed("test2"):
		#count+=100
		BuildingTrack.pos +=100
		
		add_sibling(static_body_2d_2.duplicate())
		

func _on_pause_pressed():
	
	pass # Replace with function body.
