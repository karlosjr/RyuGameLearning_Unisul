extends Node2D

onready var barrel = preload("res://scenes/barrel.tscn")

func _ready():
	pass



func _on_timer_timeout():
	create_barrel()
	

func create_barrel():
	var clone_barrel = barrel.instance()
	clone_barrel.position = Vector2(400,405)
	add_child(clone_barrel)