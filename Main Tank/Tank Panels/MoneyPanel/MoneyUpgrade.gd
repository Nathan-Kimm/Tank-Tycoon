extends Control

@onready var moneywarning = $moneywarning
@onready var text_timer = $textTimer
@onready var limitwarning = $limitwarning
@onready var timer = $Timer
var elapsed_seconds = 0
var max_seconds = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	limitwarning.visible = false
	moneywarning.visible = false
		
func _on_button_pressed():
	if Global.money >= Global.upgradePriceDict["Speed"] && Global.moneySpawnInterval != 1:
		Global.moneySpawnInterval -=1
		Global.money -= 30
	elif Global.moneySpawnInterval == 0:
		limitwarning.visible = true
		await get_tree().create_timer(2).timeout
		limitwarning.visible = false
	else:
		moneywarning.visible = true
		await get_tree().create_timer(2).timeout
		moneywarning.visible = false

