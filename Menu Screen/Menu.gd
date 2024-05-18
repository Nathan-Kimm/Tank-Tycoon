extends Control

var center: Vector2
@onready var node = $Control
@onready var scene_transition_animation = $SceneTransitionAnimation/AnimationPlayer

func _ready():
	center = Vector2(get_viewport_rect().size.x/2, get_viewport_rect().size.x/2)

func _process(_delta):
	var tween = node.create_tween()
	var offset = center - get_global_mouse_position() * 0.1
	tween.tween_property(node, "position", offset, 0.5)

func _on_item_rect_changed():
	center = Vector2(get_viewport_rect().size.x/2, get_viewport_rect().size.y/2)
	if node != null:
		node.global_position = center

func _on_play_pressed():
	scene_transition_animation.play("fade_in")
	#await get_tree().create_timer(0.5).timeout
	get_tree().change_scene_to_file("res://Main Tank/tank.tscn")


func _on_instructions_pressed():
	pass # Replace with function body.


func _on_exit_pressed():
	get_tree().quit()
