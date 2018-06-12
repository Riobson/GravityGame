extends Area2D

var FRUIT_SPEED = 150;
var direction = Vector2(-1, 1)
var speed = FRUIT_SPEED

var fruit_1 = preload("res://1.png")
var fruit_2 = preload("res://2.png")
var fruit_3 = preload("res://3.png")
var fruit_4 = preload("res://4.png")

onready var bullet_sprite = get_node("sprite")
onready var initial_pos = self.position

func _ready():
	randomize()

func reset():
	position = initial_pos
	var fruitId  = range(0,5)[randi()%range(0,5).size()]
	if(fruitId == 1):
		bullet_sprite.set_texture(fruit_1)
	if(fruitId == 2):
		bullet_sprite.set_texture(fruit_2)
	if(fruitId == 3):
		bullet_sprite.set_texture(fruit_3)
	if(fruitId == 4):
		bullet_sprite.set_texture(fruit_4)		
	if(FRUIT_SPEED < 500):
		FRUIT_SPEED += 3;
	speed = FRUIT_SPEED
	direction = Vector2(randf()*2.0 - 1, 1)

func _process(delta):
	position += direction * speed * delta

