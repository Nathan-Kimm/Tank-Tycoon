extends Control

@onready var moneywarning = $moneywarning
@onready var text_timer = $textTimer

# Called when the node enters the scene tree for the first time.
func _ready():
	moneywarning.visible = false

func _on_text_timer_timeout():
	moneywarning.visible = false
	print("Finished timer")

func _on_button_pressed():
	if Global.money >= Global.fishPriceDict["Speed"] && Global.moneySpawnInterval != 0:
		Global.moneySpawnInterval -=1
		Global.money -= 50
	else:
		text_timer.start()
		moneywarning.visible = true

