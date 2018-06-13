extends Area2D


func _on_area_entered( area ):
	if area.get_name() == "gun":
		area.reset()
		var lab = get_parent().get_node("HUD")
		lab.show_game_over()
	if area.get_name() == "granade":
		var lab = get_parent().get_node("gun")
		lab.check = true