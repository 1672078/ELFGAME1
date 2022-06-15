extends KinematicBody2D

var gravitasi = 12
var laju = 20
var kecepatan = Vector2.ZERO
export var arah = 1

var apakah_terluka = false
export var stamina = 3




func _ready():
	pass

func _physics_process(delta):
	kecepatan.y += gravitasi
	
	if is_on_wall() :
		arah = arah * -1
		
	
	kecepatan.x = laju * arah
	
	if not apakah_terluka:
		kecepatan = move_and_slide(kecepatan, Vector2.UP)
	
	if not apakah_terluka:
		_update_animasi()

func _update_animasi():
	if is_on_floor():
		$AnimatedSprite.play("Jalan")
	else:
		$AnimatedSprite.play("Jalan")
	$AnimatedSprite.flip_h = true
	if arah == -1:
		$AnimatedSprite.flip_h = false

func _on_DetekSamping_body_entered(body):
	pass
	
func _on_DetekAtas_body_entered(body):
	if body.name =="Hero" and stamina > 0:
		body.kecepatan.y =-200
	terluka()

func terluka():
	stamina -= 1
	apakah_terluka=true
	$AnimatedSprite.play("Diam")
	yield(get_tree().create_timer(1), "timeout")
	print("STAMINA: ", stamina)
	if stamina <= 0:
		mati()
	else:
		apakah_terluka = false
func mati():
	$AnimatedSprite.play("Jatuh")
	

func _on_DeteksiSamping_body_exited(body):
	if body.name == ' Hero' :
		body.terluka()
