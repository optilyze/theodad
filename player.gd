extends CharacterBody2D


const SPEED = 300.0


func _physics_process(delta):

	var x_dir = Input.get_axis("ui_left", "ui_right")
	if x_dir:
		velocity.x = x_dir * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	var y_dir = Input.get_axis("ui_up", "ui_down")
	if y_dir:
		velocity.y = y_dir * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
