extends CharacterBody2D
@export var PLAYER_SPEED = 125


func _physics_process(delta: float) -> void:
	velocity = Vector2.ZERO
	if Input.is_action_pressed("down") or Input.is_action_pressed('up'):
		var axis: float = Input.get_axis('up','down')
		velocity.y = axis * PLAYER_SPEED
	if Input.is_action_pressed("left") or Input.is_action_pressed('right'):
		var axis: float = Input.get_axis('left', 'right')
		velocity.x = axis * PLAYER_SPEED
	move_and_slide()
