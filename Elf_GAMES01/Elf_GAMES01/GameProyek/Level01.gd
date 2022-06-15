extends Node2D

onready var health_progress = $CanvasLayer/HitPoint/TextureProgress
onready var jumlah_koin = $CanvasLayer/CoinBar2/Label
func _on_ZonaJatuh_body_entered(body):
	if body.name=='Hero':
		get_tree().change_scene("res://Level01.tscn")


func _on_Hero_hero_apdet_health(value):
	health_progress.value=value


func _on_Hero_hero_apdet_koin(value):
		jumlah_koin.text=String(value)
