extends CharacterBody2D

var speed = 200

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass
	
func _physics_process(delta: float) -> void:
	velocity.x = (int(Input.is_action_pressed("right")) - int(Input.is_action_pressed("left"))) * speed
	velocity.y = (int(Input.is_action_pressed("down")) - int(Input.is_action_pressed("up"))) * speed
	
	move_and_slide()
	
