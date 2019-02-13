extends Node2D

var score = 0
enum game_state {PLAYING, STOPED}
var state = game_state.PLAYING

func _ready():
	$hud/score.text = str(score)
	state = game_state.PLAYING
	$music.play()
	

func count_score():
	score += 1
	$hud/score.text = str(score)

func game_over():
	$spawn_barril/timer.stop()
	state = game_state.STOPED
	$music.stop()
	$ryu.die()


func _on_timer_timeout():
	pass # replace with function body
