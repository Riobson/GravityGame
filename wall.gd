extends Area2D

export var x_direction = 1
export var y_direction = 1

func _ready():
	randomize()
	y_direction = rand_range(0, 1)
	
func _on_wall_area_entered( area ):
	if area.get_name() == "banana":
		area.direction.x = x_direction
		area.direction.y = y_direction
