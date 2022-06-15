extends CanvasLayer

onready var setting_menu = $Setting
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_playbutton1_pressed():
	get_tree().change_scene("res://Level01.tscn")

func _on_playbutton2_pressed():
	setting_menu.popup_centered()

func _on_playbutton3_pressed():
	get_tree().quit()
