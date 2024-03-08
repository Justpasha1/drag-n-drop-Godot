extends Node2D

func _on_area_2d_area_entered(area):
	var body = area.get_parent()
	if body.is_in_group('card'):
		body.cur_pos = position

func _on_area_2d_area_exited(area):
	var body = area.get_parent()
	if body.is_in_group('card'):
		body.cur_pos = body.init_pos
