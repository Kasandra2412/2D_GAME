class_name PushableBoulder extends RigidBody2D
var push_force: float = 200.0

func _ready() -> void:
	pass
	
func push(direction: Vector2) -> void:
	apply_impulse(Vector2.ZERO, direction * push_force)
