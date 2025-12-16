extends Node

@export var vitesse_cible := 200.0  # pixels/s

var balle : RigidBody2D

func _ready() -> void:
	balle = get_parent() as RigidBody2D
	balle.gravity_scale = 0.0
	balle.linear_damp = 0.0
	balle.lock_rotation = true
	
	# Attendre un frame pour s'assurer que tout est chargé
	await get_tree().process_frame
	
	# Impulsion initiale vers le haut
	balle.apply_impulse(Vector2(0, -1) * vitesse_cible)

func _physics_process(_delta: float) -> void:
	if balle and balle.linear_velocity.length() != 0:
		# Conserver la vitesse constante à chaque frame
		balle.linear_velocity = balle.linear_velocity.normalized() * vitesse_cible
