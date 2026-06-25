extends CharacterBody2D

@export var horizontal_velocity := 1000.0
@export var upward_velocity := -1000.0
@export var downward_velocity := 2000.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:

	velocity = Vector2.ZERO
	velocity.x = horizontal_velocity

	if Input.is_action_pressed("flap"):
		$AnimatedSprite2D.animation = &"upflap"
		velocity.y = upward_velocity
	else:
		$AnimatedSprite2D.animation = &"downflap"
		velocity.y = downward_velocity
		
	
	$AnimatedSprite2D.play()
	move_and_slide()
	
	if is_on_floor():
		# TODO: Add game restart
		print("Game Over!")