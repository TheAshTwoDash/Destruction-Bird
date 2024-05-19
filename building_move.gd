extends StaticBody2D

var dup = self.duplicate()
# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(30, 0)
	self.duplicate().add_child(dup)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
