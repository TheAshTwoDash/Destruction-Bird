extends Area2D
@onready var hit_box = $"."

func _on_area_entered(area):
	if area == hit_box:
		print("how")



func _on_area_2d_2_area_entered(area):
	if area == hit_box:
		print("how2")

