extends CanvasLayer
signal start_game

func show_message(text):
	$MessageLabel.text = text
	$MessageLabel.show()

func show_game_over():
	$MessageLabel.text = "Game Over"
	$MessageLabel.show()
	$StartButton.show()
	var lab = get_parent().get_node("banana")
	lab.check = false

func update_score(score):
	$ScoreLabel.text = str(score)

func _on_StartButton_pressed():
	get_node("ScoreLabel").set_text("0")
	$StartButton.hide()
	$MessageLabel.hide()
	emit_signal("start_game")
	var lab = get_parent().get_node("banana")
	lab.check = true