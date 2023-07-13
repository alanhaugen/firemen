extends CharacterBody2D

@export var gravity = 400
@export var speed = 300

@onready var animated_sprite = $AnimatedSprite2D

func _physics_process(delta):
	if is_on_floor()==false:
		velocity.y += gravity * delta
	
	var direction = Input.get_axis("move_left", "move_right")
	velocity.x = direction * speed
	move_and_slide()
	
	update_animations(direction)

func update_animations(direction):
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("run")
