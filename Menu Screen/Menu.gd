extends Control

@onready var scene_transition_animation = $SceneTransitionAnimation/AnimationPlayer


func _on_button_pressed():
	scene_transition_animation.play("fade_in")
	#await get_tree().create_timer(0.5).timeout
	get_tree().change_scene_to_file("res://Main Tank/tank.tscn")

func _on_setting_pressed():
	pass # Replace with function body.

func _on_quit_pressed():
	get_tree().quit()
