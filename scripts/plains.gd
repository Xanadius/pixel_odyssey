extends Node2D

func _ready():
	if Global.game_first_loadin == true:
		$player.position.x = Global.player_start_posx
		$player.position.y = Global.player_start_posy
	else:
		$player.position.x = Global.player_exit_world_posx
		$player.position.y = Global.player_exit_world_posy
	
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
			get_tree().change_scene_to_file("res://scenes/small_forest.tscn")
			Global.game_first_loadin = false
			Global.finish_change_scene()
	
