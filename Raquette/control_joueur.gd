extends Node

@export var speed = 300

func _physics_process(_delta: float) -> void:
	var direction := 0.0
	var screen := get_viewport().get_visible_rect()
	
	if Input.is_action_pressed("p1_left"):
		direction -= 1.0
	if Input.is_action_pressed("p1_right"):
		direction += 1.0
	
	var raquette := get_parent() as CharacterBody2D
	raquette.velocity.x = direction * speed
	raquette.velocity.y = 0.0
	raquette.position.x = clamp(raquette.position.x, screen.position.x, screen.position.x + screen.size.x)
	
	raquette.move_and_slide()

func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
