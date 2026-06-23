extends CharacterBody2D


var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:

	velocity = Vector2.ZERO
	velocity.x = 1000.0

	if Input.is_action_pressed("flap"):
		$AnimatedSprite2D.animation = &"upflap"
		velocity.y = -1000.0
	else:
		$AnimatedSprite2D.animation = &"downflap"
		velocity.y = 2000.0
		
	
	$AnimatedSprite2D.play()
	move_and_slide()