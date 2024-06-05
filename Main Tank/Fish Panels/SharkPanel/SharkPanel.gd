extends Control
var sharkfish = preload("res://Fish/Sharkfish/sharkfish.tscn")
@onready var moneywarning = $moneywarning
@onready var end_credit = $EndCredit


var tank
@onready var text_timer = $textTimer

# Called when the node enters the scene tree for the first time.
func _ready():
	end_credit.hide()
	moneywarning.visible = false
	tank = get_tree().get_current_scene()

func _on_button_pressed():
	if Global.money >= Global.fishPriceDict["Shark"]:
		var c = sharkfish.instantiate()
		c.position = Vector2(-504, -295)
		tank.add_child(c)
		Global.money -= 250
		end_credit.show()
	else:
		moneywarning.visible = true
		await get_tree().create_timer(2).timeout
		moneywarning.visible = false
		
	
