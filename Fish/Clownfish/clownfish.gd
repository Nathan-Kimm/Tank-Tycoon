extends CharacterBody2D
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var timer = $"../Timer"

var dir_x = randi() % 5 -2
var dir_y = randi() % 5 -2
var right_side = 150
var left_side = 50
var top = 50
var bottom = 150
var speed = 20

func _process(delta):
	if dir_x > 0 and global_position.x >= right_side:
		dir_x = 0
	if dir_x < 0 and global_position.x <= left_side:
		dir_x = 0
	if dir_y > 0 and global_position.y >= right_side:
		dir_y = 0
	if dir_y < 0 and global_position.y <= right_side:
		dir_y = 0
		
	position.x += dir_x * speed * delta
	position.y += dir_y * speed * delta
	
func on_Timer_Timeout():
	randomize()
	dir_x = randi() % 5 -2
	dir_y = randi() % 5 - 2
	speed = randi() % 30 + 10
	restart_timer()
	
func restart_timer():
	var new_time = randi() % 3 + 1 
	timer.wait_time = new_time
	timer.start()
