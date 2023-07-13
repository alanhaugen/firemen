# Jeg anbefaler å se https://www.gamedev.tv/courses/godot-complete-2d/lectures/46550931
# og https://www.gamedev.tv/courses/godot-complete-2d/lectures/46225670
# og https://www.gamedev.tv/courses/godot-complete-2d/lectures/46225673

extends CharacterBody2D

@export var gravity = 400
var force = -1000
@export var speed = 300

func _physics_process(delta):
	velocity.y += (force + gravity) * delta
	velocity.x = speed
	force = force + 100
	
	if is_on_floor():
		force = 0
	
	move_and_slide()
	
