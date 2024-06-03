extends Node2D

@onready var scene_transition_animation = $SceneTransitionAnimation/AnimationPlayer
@onready var pause_menu = $PauseMenu
@onready var shop_button = $ShopButton
@onready var shop = $MarginContainer/Shop


var paused = false
var shopMenu = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pause_menu.hide()
	shop.hide()
	scene_transition_animation.get_parent().get_node("ColorRect").color.a = 255
	scene_transition_animation.play("fade_out")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("pause"):
		
		pauseMenu()

func pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
		
	paused = !paused


func _on_shop_button_pressed():
	if shopMenu:
		shop.hide()
		Engine.time_scale = 1
	else:
		shop.show()
		Engine.time_scale = 0
		shopMenu = false
		

func _on_test_button_pressed():
	Global.money += 1

func _on_remove_money_test_pressed():
	Global.money -= 1
