extends RigidBody2D

# amount of force to apply to character on click
var hit_force : float = 50

func _process(_delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		var direction = global_position.direction_to(get_global_mouse_position())
		apply_impulse(direction * hit_force)
