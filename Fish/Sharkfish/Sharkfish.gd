extends Node2D

@onready var animated_sprite_2d = $sharkfish

# Constants
const MIN_X = -1300
const MAX_X = 100
const MIN_Y = -1000
const MAX_Y = -200
var SPEED = Global.fishSpeed +150

# Variables
var direction = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	# Initialize random number generator
	randomize()
	# Set initial direction
	set_new_direction()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Move the sprite
	animated_sprite_2d.play("swimming")
	move_sprite(delta)
	# Check for collision with boundaries and bounce
	check_boundaries()
 
func set_new_direction():
	# Set a random direction
	direction.x = randf_range(-1, 1)
	direction.y = randf_range(-1, 1)
	# Normalize the direction to maintain consistent speed
	direction = direction.normalized()

func move_sprite(delta):
	# Calculate the movement vector
	var movement = direction * SPEED * delta
	# Move the sprite
	global_position += movement

func check_boundaries():
	# Check for collision with the left and right boundaries
	if global_position.x < MIN_X:
		global_position.x = MIN_X
		direction.x *= -1
		animated_sprite_2d.flip_h = false
	elif global_position.x > MAX_X:
		global_position.x = MAX_X
		direction.x *= -1
		animated_sprite_2d.flip_h = true

	# Check for collision with the top and bottom boundaries
	if global_position.y < MIN_Y:
		global_position.y = MIN_Y
		direction.y *= -1
	elif global_position.y > MAX_Y:
		global_position.y = MAX_Y
		direction.y *= -1

