extends Control

@onready var start_button = $MarginContainer/HBoxContainer/VBoxContainer/start_button as Button
@onready var option_button = $MarginContainer/HBoxContainer/VBoxContainer/option_button as Button
@onready var quit_button = $MarginContainer/HBoxContainer/VBoxContainer/quit_button as Button
@onready var option_menu = preload("res://scenes/option_menu.tscn") as PackedScene

func _ready():
	start_button.button_down.connect(on_start_pressed)
	option_button.button_down.connect(on_option_pressed)
	quit_button.button_down.connect(on_quit_pressed)

func on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/plains.tscn")
	
func on_option_pressed() -> void:
	get_tree().change_scene_to_packed(option_menu)
	
func on_quit_pressed() -> void:
	get_tree().quit()
