extends Control

@onready var button = $MarginContainer/VBoxContainer/Button
@onready var end_credit = $"."


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _on_button_pressed():
	end_credit.hide()
	Engine.time_scale = 1
