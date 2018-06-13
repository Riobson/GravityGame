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
	var lab = get_parent().get_node("gun")
	lab.check = false
	var lab2 = get_parent().get_node("granade")
	lab2.check = false
	get_parent().get_node("Background").stop()
	get_parent().get_node("game_over").play()
	
func update_score(score):
	$ScoreLabel.text = str(score)

func _on_StartButton_pressed():
	get_node("ScoreLabel").set_text("0")
	$StartButton.hide()
	$MessageLabel.hide()
	emit_signal("start_game")
	var lab = get_parent().get_node("gun")
	lab.check = true
	get_parent().get_node("Background").play()
	get_parent().get_node("game_over").stop()