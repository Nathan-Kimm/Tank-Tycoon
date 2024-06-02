extends Control

@onready var main = $"../"
@onready var settings = $Settings
@onready var menu = $"."
@onready var pause_menu = $"."

func _on_resume_pressed():
	main.pauseMenu()

func _on_settings_pressed():
	settings.show()

func _on_quit_pressed():
	get_tree().quit()
