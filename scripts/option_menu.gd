extends Control

@onready var back_button = $back_button as Button
@onready var main_menu = preload("res://scenes/main_menu.tscn") as PackedScene

func _ready():
	back_button.button_down.connect(on_back_button_pressed)

func on_back_button_pressed():
	get_tree().change_scene_to_packed(main_menu)
