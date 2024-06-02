extends Control

var master_bus = AudioServer.get_bus_index("Master")
var music_bus = AudioServer.get_bus_index("Music")
var sfx_bus =  AudioServer.get_bus_index("SFX")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_fullscreen_toggled(toggled_on):
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_EXCLUSIVE_FULLSCREEN)
	

func _on_borderless_toggled(toggled_on):
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)


func _on_master_volume_value_changed(value):
	AudioServer.set_bus_volume_db(master_bus,value)
	if value == -30:
		AudioServer.set_bus_mute(master_bus,true)
	else:
		AudioServer.set_bus_mute(master_bus, false)


func _on_music_volume_value_changed(value):
	AudioServer.set_bus_volume_db(music_bus,value)
	if value == -30:
		AudioServer.set_bus_mute(music_bus,true)
	else:
		AudioServer.set_bus_mute(music_bus, false)


func _on_sound_fx_value_changed(value): 
	AudioServer.set_bus_volume_db(sfx_bus,value)
	if value == -30:
		AudioServer.set_bus_mute(sfx_bus,true)
	else:
		AudioServer.set_bus_mute(sfx_bus, false)

