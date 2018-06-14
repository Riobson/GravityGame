extends Area2D
export var ball_dir = 1

const MOVE_SPEED = 400

var leftWall = 0
var rightWall  =0;
var initial_pos = self.position

func _process(delta):
	var which = get_name()
	
	# move up and down based on input
	if Input.is_action_pressed("MOVE_RIGHT") and rightWall == 1:
		position.x += MOVE_SPEED * delta
		

	if Input.is_action_pressed("MOVE_LEFT") and leftWall == 1:
		position.x -= MOVE_SPEED * delta
	

		

	
func reset():
	position = initial_pos



func _on_Player_area_entered(area):
	if area.get_name() == "left_wall":
		# assign new direction
		leftWall = 0

	if area.get_name() == "right_wall":
		# assign new direction
		rightWall = 0
	if area.get_name() == "gun":
		area.reset()
		var lab = get_parent().get_node("HUD").get_node("ScoreLabel")
		lab.set_text(str(int(lab.get_text()) + 1))
		get_parent().get_node("HIT").play()
	if area.get_name() == "granade":
		area.reset()
		var lab = get_parent().get_node("HUD")
		lab.show_game_over()
		



func _on_Player_area_exited(area):
	if area.get_name() == "left_wall":
		leftWall = 1
	if area.get_name() == "right_wall":
		rightWall = 1

