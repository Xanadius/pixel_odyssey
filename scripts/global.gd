extends Node

var player_current_attack = false

var current_scene = "plains"
var transition_scene = false

var player_exit_world_posx = 510
var player_exit_world_posy = 26
var player_start_posx = 1118
var player_start_posy = 546

var game_first_loadin = true

func finish_change_scene():
	if transition_scene == true:
		transition_scene = false
		if current_scene == "plains":
			current_scene = "small_forest"
		else:
			current_scene == "plains"
