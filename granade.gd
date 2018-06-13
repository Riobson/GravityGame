extends Area2D

var GUN_SPEED = 150;
var direction = Vector2(-1, 1)
var speed = GUN_SPEED
var check = false

onready var bullet_sprite = get_node("sprite")
onready var initial_pos = self.position

func _ready():
	randomize()

func reset():
	position = initial_pos					
	if(GUN_SPEED < 500):
		GUN_SPEED += 3;
	speed = GUN_SPEED
	direction = Vector2(randf()*2.0 - 1, 1)

func _process(delta):
		if(check == true):
			position += direction * speed * delta

