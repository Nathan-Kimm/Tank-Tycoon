extends CharacterBody2D
@onready var animated_sprite_2d = $AnimatedSprite2D

# Variables for movement
var speed = 100
var direction = Vector2()
var change_direction_time = 2.0
var time_until_change = change_direction_time

# Define the boundary size to match the desired resolution (e.g., 640x320)
var boundary_size = Vector2(640, 320)
var boundary_rect = Rect2()

func _ready():
	animated_sprite_2d.play("swimming")
	randomize()
	update_boundary_rect()
	direction = Vector2(randf_range(-1, 1), randf_range(-1, 1)).normalized()
	time_until_change = change_direction_time

func _process(delta):
	move_randomly(delta)
	stay_within_boundary()

func update_boundary_rect():
	var screen_size = get_viewport_rect().size
	var boundary_position = (screen_size - boundary_size) / 2
	boundary_rect = Rect2(boundary_position, boundary_size)

func move_randomly(delta):
	time_until_change -= delta
	if time_until_change <= 0:
		direction = Vector2(randf_range(-1, 1), randf_range(-1, 1)).normalized()
		time_until_change = change_direction_time

	velocity = direction * speed
	move_and_slide()

func stay_within_boundary():
	var position_changed = false

	if position.x < boundary_rect.position.x:
		position.x = boundary_rect.position.x
		direction.x *= -1
		position_changed = true
	elif position.x > boundary_rect.position.x + boundary_rect.size.x:
		position.x = boundary_rect.position.x + boundary_rect.size.x
		direction.x *= -1
		position_changed = true

	if position.y < boundary_rect.position.y:
		position.y = boundary_rect.position.y
		direction.y *= -1
		position_changed = true
	elif position.y > boundary_rect.position.y + boundary_rect.size.y:
		position.y = boundary_rect.position.y + boundary_rect.size.y
		direction.y *= -1
		position_changed = true

	if position_changed:
		velocity = direction * speed

func randf_range(min, max):
	return randf() * (max - min) + min
