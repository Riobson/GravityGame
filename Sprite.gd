extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
func _ready():
	self.set_process(true)
	
func _process(delta):

	
	# move up and down based on input
	if Input.is_action_pressed("MOVE_RIGHT") and position.y > 0:
		self.flip_h = true;

	if Input.is_action_pressed("MOVE_LEFT") and position.y < get_viewport_rect().size.y:
		self.flip_h = false;
