extends Area2D


func _on_area_entered( area ):
	if area.get_name() == "banana":
		area.reset()
