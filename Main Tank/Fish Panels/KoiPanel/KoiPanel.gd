extends Control
var Koifish = preload ("res://Fish/Koifish/koifish.tscn")
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
	if Global.money >= Global.fishPriceDict["Koi"]:
		var c = Koifish.instantiate()
		c.position = Vector2(-504, -295)
		tank.add_child(c)
		Global.money -= 100
	else:
		text_timer.start()
		moneywarning.visible = true
