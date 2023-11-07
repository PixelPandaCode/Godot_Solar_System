extends Node2D
# 1. gravity
# 2. scale
# 3. color
# 4. float: white, blue, green, yellow, red
class_name Planet

@export var cur_scale = 1.0
@export var cur_color = Color(1, 1, 1, 1)

# Called when the node enters the scene tree for the first time.
func _ready():
	updateColor()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass 
	

func updateColor():
	self.scale = Vector2(cur_scale, cur_scale)
	if cur_scale <= 1.0:
		cur_color = Color(1, 1, 1, 1)
	elif cur_scale <= 3.0:
		cur_color = Color(0.3, 0.5, 1, 1)
	elif cur_scale <= 5.0:
		cur_color = Color(0.3, 1, 0.5, 1)
	elif cur_scale <= 8.0:
		cur_color = Color(0.3, 1, 1, 1)
	else:
		cur_color = Color(1.0, 0.2, 0.2, 1)
	$Sprite2D.set_self_modulate(cur_color)
