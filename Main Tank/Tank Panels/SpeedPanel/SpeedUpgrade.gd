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
	if Global.money >= Global.upgradePriceDict["Speed"]:
		Global.fishSpeed +=50
		Global.money -= 25
	else:
		moneywarning.visible = true
		await get_tree().create_timer(2).timeout
		moneywarning.visible = false
