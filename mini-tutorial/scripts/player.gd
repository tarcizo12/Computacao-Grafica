extends CharacterBody2D


const SPEED = 300


func _physics_process(delta: float) -> void: handleMovement()
	
func handleMovement():
	var eixoHorizontal := Input.get_axis("esquerda", "direita")
	var eixoVertical := Input.get_axis("cima", "baixo")
	
	if eixoHorizontal:
		velocity.x = eixoHorizontal * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
		
	if eixoVertical:
		velocity.y = eixoVertical * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	move_and_slide()
