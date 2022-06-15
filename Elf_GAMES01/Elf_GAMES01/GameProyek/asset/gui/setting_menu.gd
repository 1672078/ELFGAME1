extends Popup

# Video
onready var display_options = $SettingTab/Video/MarginContainer/SettingVideo/OptionButton
onready var vsync_btn = $SettingTab/Video/MarginContainer/SettingVideo/VsyncButton
onready var bright_slider = $SettingTab/Video/MarginContainer/SettingVideo/BrightnessSlider

# Audio
onready var master_vol = $SettingTab/Audio/MarginContainer/SettingAudio/VolSlider
onready var music_vol = $SettingTab/Audio/MarginContainer/SettingAudio/MusicSlider
onready var sfx_vol = $SettingTab/Audio/MarginContainer/SettingAudio/SfxSlider

func _ready():
	pass



func _on_OptionButton_item_selected(index):
	pass # Replace with function body.


func _on_CheckButton_toggled(button_pressed):
	pass # Replace with function body.


func _on_BrightnessSlider_value_changed(value):
	pass # Replace with function body.


func _on_VolSlider_value_changed(value):
	pass # Replace with function body.


func _on_MusicSlider_value_changed(value):
	pass # Replace with function body.


func _on_SfxSlider_value_changed(value):
	pass # Replace with function body.
