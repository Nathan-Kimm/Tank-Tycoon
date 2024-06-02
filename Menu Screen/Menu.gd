extends Control

@onready var scene_transition_animation = $SceneTransitionAnimation/AnimationPlayer
@onready var settings = $Settings

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		settings.hide()

func _ready():
	settings.hide()

func _on_button_pressed():
	$"press sound".play()
	scene_transition_animation.play("fade_in")
	#await get_tree().create_timer(0.5).timeout
	get_tree().change_scene_to_file("res://Main Tank/tank.tscn")

func _on_setting_pressed():
	$"press sound".play()
	settings.show()

func _on_quit_pressed():
	$"press sound".play()
	get_tree().quit()


func _on_play_mouse_entered():
	$"Hover sound".play()
	pass # Replace with function body.
func _on_quit_mouse_entered():
	$"Hover sound".play()
	pass # Replace with function body.
func _on_setting_mouse_entered():
	$"Hover sound".play()
	pass # Replace with function body.
	
	
