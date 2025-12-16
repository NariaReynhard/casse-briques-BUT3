extends Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var balle := get_parent() as RigidBody2D
	balle.gravity_scale = 0.0
	balle.linear_damp = 0.0
	balle.lock_rotation=true
	balle.apply_impulse(Vector2(0,-500))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
