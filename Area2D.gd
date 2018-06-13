extends Area2D
export var ball_dir = 1

const MOVE_SPEED = 400

var leftWall = 1
var rightWall  =1;

func _process(delta):
	var which = get_name()
	
	# move up and down based on input
	if Input.is_action_pressed("MOVE_RIGHT") and rightWall == 1:
		position.x += MOVE_SPEED * delta
		

	if Input.is_action_pressed("MOVE_LEFT") and leftWall == 1:
		position.x -= MOVE_SPEED * delta
	

		

	




func _on_Player_area_entered(area):
	if area.get_name() == "left_wall":
		# assign new direction
		leftWall = 0

	if area.get_name() == "right_wall":
		# assign new direction
		rightWall = 0
	if area.get_name() == "banana":
		area.reset()
		var lab = get_parent().get_node("HUD").get_node("ScoreLabel")
		lab.set_text(str(int(lab.get_text()) + 1))
		get_parent().get_node("HIT").play()
		



func _on_Player_area_exited(area):
	if area.get_name() == "left_wall":
		leftWall = 1
	if area.get_name() == "right_wall":
		rightWall = 1

