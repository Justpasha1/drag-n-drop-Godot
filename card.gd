extends Sprite2D

var can_drag
var init_pos
var cur_pos
var shape_cast

func _ready():
	init_pos = position
	cur_pos = init_pos
	shape_cast = %ShapeCast2D

func _on_area_2d_input_event(viewport, event, shape_idx):
	if !Input.is_action_pressed("click"):
		position = cur_pos
		can_drag = false
	else:
		can_drag = true

func _process(delta):
	if can_drag:
		position = get_global_mouse_position()
