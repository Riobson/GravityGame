extends CanvasLayer
signal start_game


var level = 1



func show_message(text):
	$MessageLabel.text = text
	$MessageLabel.show()

func show_game_over():
	$MessageLabel.text = "Game Over"
	$MessageLabel.show()
	$StartButton.show()
	var lab = get_parent().get_node("banana")
	lab.check = false
	get_parent().get_node("Background").stop()
	get_parent().get_node("game_over").play()
	var player = get_parent().get_node("Player")
	player.leftWall = 0
	player.rightWall = 0
	player.reset()
func update_score(score):
	$ScoreLabel.text = str(score)

func _on_StartButton_pressed():
	get_node("ScoreLabel").set_text("0")
	$StartButton.hide()
	$MessageLabel.hide()
	emit_signal("start_game")
	var lab = get_parent().get_node("banana")
	lab.check = true
	get_parent().get_node("Background").play()
	get_parent().get_node("game_over").stop()
	var player = get_parent().get_node("Player")
	player.leftWall = 1
	player.rightWall = 1