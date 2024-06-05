extends Control
var ClownFish = preload ("res://Fish/Clownfish/clownfish.tscn")
@onready var moneywarning = $moneywarning

var tank
@onready var text_timer = $textTimer

# Called when the node enters the scene tree for the first time.
func _ready():
	moneywarning.visible = false
	tank = get_tree().get_current_scene()

func _on_button_pressed():
	if Global.money >= Global.fishPriceDict["Clownfish"]:
		var c = ClownFish.instantiate()
		c.position = Vector2(-504, -295)
		tank.add_child(c)
		Global.money -= 50
	else:
		moneywarning.visible = true
		await get_tree().create_timer(2).timeout
		moneywarning.visible = false
