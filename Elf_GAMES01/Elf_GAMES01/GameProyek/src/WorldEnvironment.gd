extends WorldEnvironment

func _ready():
	GlobalSetting.connect("brightness_updated", self, "_on_brightness_updated")

func _on_brightness_updated(value):
	environment.adjustment_brightness == value
