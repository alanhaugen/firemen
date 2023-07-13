extends Node2D

var score

func new_game():
	score = 0
	$Timer.start()

#func _on_mob_timer_timeout():
	# Create a new instance

func _process(delta):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
	elif Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()

func _ready():
	new_game()
