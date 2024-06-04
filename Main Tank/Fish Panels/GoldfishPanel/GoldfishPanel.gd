extends Control
var Goldfish = preload ("res://Fish/Goldfish/goldfish.tscn")
@onready var moneywarning = $moneywarning

var tank
@onready var text_timer = $textTimer

# Called when the node enters the scene tree for the first time.
func _ready():
	moneywarning.visible = false
	
	tank = get_tree().get_current_scene()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_text_timer_timeout():
	moneywarning.visible = false
	print("Finished timer")

func _on_button_pressed():
	if Global.money >= Global.fishPriceDict["Goldfish"]:
		var c = Goldfish.instantiate()
		c.position = Vector2(-504, -295)
		tank.add_child(c)
		Global.money -= 75
	else:
		text_timer.start()
		moneywarning.visible = true
