extends Node

signal brightness_updated(value)

func toggle_fullscreen(value):
	OS.window_fullscreen = value

func toggle_vsync(value):
	OS.vsync_enabled = value

func update_brightness(value):
	emit_signal("brightness_updated", value)
