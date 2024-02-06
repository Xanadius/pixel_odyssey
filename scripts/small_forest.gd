extends Node2D

func _process(delta):
	change_scene()

func _on_transition_point_body_entered(body):
	if body.has_method("player"):
		Global.transition_scene = true

func _on_transition_point_body_exited(body):
	if body.has_method("player"):
		Global.transition_scene = false

func change_scene():
	if Global.transition_scene == true:
		if Global.current_scene == "plains":
			get_tree().change_scene_to_file("res://scenes/plains.tscn")
			Global.finish_change_scene()
	
