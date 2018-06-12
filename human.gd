extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var speed = 5
var scaleCurrent = Vector2(0.2, 0.2)

func _ready():
	self.set_process(true)
	self.set_process_input(true)
	self.scale = scaleCurrent;




#func _input(event):

	
	#if event is InputEventMouseButton and event.is_pressed() and event.button_index == BUTTON_LEFT:
	#		var curPos = self.position
#
	#		print(str("position mouse == ", self.get_global_mouse_position().x))
	#		curPos.x = self.get_global_mouse_position().x
	#		curPos.y = self.get_global_mouse_position().y
	#		self.position = curPos



func _process(delta):
	var curPos = self.position
	if(Input.is_action_pressed("MOVE_RIGHT_2")):
		self.flip_h = true;
		print(str("position  == ", self.texture.get_size().x))

		if(curPos.x < self.get_viewport_rect().size.x - (self.texture.get_width()*0.185)):
			curPos.x += speed
			self.position = curPos
	if(Input.is_action_pressed("MOVE_LEFT_2")):
		self.flip_h = false;
		
		if(curPos.x > -self.get_viewport_rect().size.x  + (self.texture.get_width()*0.18)):
			curPos.x -= speed
			self.position = curPos

