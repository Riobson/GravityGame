extends KinematicBody2D

var screenWidth = ProjectSettings.get_setting("display/window/size/width")
var screenHeight = ProjectSettings.get_setting("display/window/size/height")

var gravity = 200.0
var dir = Vector2(0, -1);
var direction = 0

func _ready():
	randomize()
	direction = rand_range(-20, 20)

func checkForBorderHit():
	if position.x < 0 or position.x >= screenWidth: 
		direction = -direction
	
func checkForBottomReached():
	if position.y >= screenHeight:
		dir = -dir

func _physics_process(delta):
	position += dir
	position.x += direction
	checkForBorderHit()
	checkForBottomReached()
	


        
		
