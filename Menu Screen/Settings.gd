extends Control

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_fullscreen_toggled(toggled_on):
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_EXCLUSIVE_FULLSCREEN)


func _on_borderless_toggled(toggled_on):
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)


func _on_master_volume_value_changed(value):
	volume(0, value)


func _on_music_volume_value_changed(value):
	volume(1, value)


func _on_sound_fx_value_changed(value):
	volume(2, value)


func volume(bus_index, value):
	AudioServer.set_bus_volume_db(bus_index, value)
