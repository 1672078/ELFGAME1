extends CanvasLayer



func _on_upbutton_pressed():
	Input.action_press("lompat")


func _on_upbutton_released():
	Input.action_release("lompat")


func _on_leftbutton_pressed():
	Input.action_press("gerak_kiri")


func _on_leftbutton_released():
	Input.action_release("gerak_kiri")


func _on_rightbutton_pressed():
	Input.action_press("gerak_kanan")


func _on_rightbutton_released():
	Input.action_release("gerak_kanan")
