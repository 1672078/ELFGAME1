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
	display_options.select(1 if Save.game_data.fullscreen_on else 0)
	GlobalSetting.toggle_fullscreen(Save.game_data.fullscreen_on)
	vsync_btn.pressed = Save.game_data.vsync_on
	bright_slider.value = Save.game_data.brightness
	
	master_vol.value = Save.game_data.master_vol


func _on_OptionButton_item_selected(index):
	GlobalSetting.toggle_fullscreen(true if index == 1 else false)


func _on_CheckButton_toggled(button_pressed):
	GlobalSetting.toggle_vsync(button_pressed)


func _on_BrightnessSlider_value_changed(value):
	GlobalSetting.update_brightness(value)


func _on_VolSlider_value_changed(value):
	GlobalSetting.update_master_vol(value)


func _on_MusicSlider_value_changed(value):
	pass # Replace with function body.


func _on_SfxSlider_value_changed(value):
	pass # Replace with function body.
