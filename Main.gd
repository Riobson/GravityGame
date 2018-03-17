extends Node

var score

func _ready():
	new_game()
	pass

func game_over():
	$HUD.show_game_over();
    
func new_game():
	$HUD.show_message("Get Ready")

func _on_HUD_start_game():
	score = 123;
	$HUD.update_score(score)