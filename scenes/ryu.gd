extends RigidBody2D

var is_alive = true
export (int) var speed


func _ready():
	$anima.play("correndo")
	linear_velocity = Vector2(0,0)
	
	

func _process(delta):
	if is_alive:
		if linear_velocity.y == 0:
			$anima.play("correndo")

		elif linear_velocity.y < -0.1:
			$anima.play("jump")
		elif linear_velocity.y > 0.1:
			$anima.play("fall")


func flap():
	if linear_velocity.y == 0:
		$jumpStreet.play()
		linear_velocity = Vector2(0,-500)

func _input(event):
	if is_alive:
		if event.is_action_pressed("ui_up"):
			flap()
	if !is_alive:
		if event.is_action_pressed("ui_accept"):
			get_tree().change_scene("res://scenes/ryulife.tscn")

func die():
	if is_alive:
		is_alive = false
		$deathStreet.play()
		linear_velocity = Vector2(-100,-650)
		$anima.play("death")
		


