extends Node2D

@onready var scene_transition_animation = $SceneTransitionAnimation/AnimationPlayer
@onready var pause_menu = $PauseMenu
@onready var shop_button = $ShopButton
@onready var shop = $MarginContainer/Shop
@onready var money_timer = $money_timer
var money = preload("res://Main Tank/Money.tscn")

var paused = false
var shopMenu = false

# Called when the node enters the scene tree for the first time.
func _ready():
	money_timer.wait_time = Global.moneySpawnInterval
	money_timer.start()
	pause_menu.hide()
	shop.hide()
	scene_transition_animation.get_parent().get_node("ColorRect").color.a = 255
	scene_transition_animation.play("fade_out")

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
	else:
		shop.show()
		shopMenu = false

func _on_money_timer_timeout():
	var random_x = randf_range(-700, 700)
	var random_y = randf_range(-400, 400)
	var spawn_position = Vector2(random_x, random_y)
	
	var money_sprite = money.instantiate()
	
	money_sprite.position = spawn_position
	
	add_child(money_sprite)
	
	money_timer.wait_time = Global.moneySpawnInterval
	print(Global.moneySpawnInterval)
	money_timer.start()
