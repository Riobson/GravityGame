extends Area2D

var GUN_SPEED = 150;
var direction = Vector2(-1, 1)
var speed = GUN_SPEED
var check = false

var gun_1 = preload("res://1.png")
var gun_2 = preload("res://2.png")
var gun_3 = preload("res://2.png")
var gun_4 = preload("res://4.png")
var gun_5 = preload("res://5.png")
var gun_6 = preload("res://6.png")
var gun_7 = preload("res://7.png")
var gun_8 = preload("res://8.png")
onready var bullet_sprite = get_node("sprite")
onready var initial_pos = self.position

func _ready():
	randomize()

func reset():
	position = initial_pos
	var choose  = range(0,11)[randi()%range(0,11).size()]
	if (choose >= 1 && choose <=9):
		check = true
		var gunId  = range(0,9)[randi()%range(0,9).size()]
		if(gunId == 1):
			bullet_sprite.set_texture(gun_1)
		if(gunId == 2):
			bullet_sprite.set_texture(gun_2)
		if(gunId == 3):
			bullet_sprite.set_texture(gun_3)
		if(gunId == 4):
			bullet_sprite.set_texture(gun_4)
		if(gunId == 5):
			bullet_sprite.set_texture(gun_5)
		if(gunId == 6):
			bullet_sprite.set_texture(gun_6)
		if(gunId == 7):
			bullet_sprite.set_texture(gun_7)
		if(gunId == 8):
			bullet_sprite.set_texture(gun_8)
		if(GUN_SPEED < 500):
			GUN_SPEED += 3;
		speed = GUN_SPEED
		direction = Vector2(randf()*2.0 - 1, 1)
	if(choose == 10):
		var lab = get_parent().get_node("granade")
		lab.check = true
		lab.position = lab.initial_pos
		lab.GUN_SPEED = GUN_SPEED
		lab.speed = GUN_SPEED
		check = false

func _process(delta):
		if(check == true):
			position += direction * speed * delta

