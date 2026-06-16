extends CharacterBody2D


var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:

	if Input.is_action_pressed("flap"):
		velocity.y -= gravity * delta
	else:
		velocity.y += gravity * delta
		
	velocity.x += 10

	move_and_slide()