extends Control
var ClownFish = preload ("res://Fish/Clownfish/clownfish.tscn")
var tank
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_tank_ready(tank_node):
	tank = tank_node

func _on_button_pressed():
	var c = ClownFish.instantiate()
	c.position = Vector2(-504, -295)
	tank.add_child(c)
