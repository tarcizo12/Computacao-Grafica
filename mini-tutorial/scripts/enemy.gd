extends CharacterBody2D

class_name Enemy

var referenciaDoJogador = null
var velocidadeEixoY = 100
var velocidadeEixoX = 150
@onready var personagem = get_node('../Player')

func _physics_process(delta: float) -> void:
	if referenciaDoJogador != null: moverInimigo(personagem.global_position)

func moverInimigo(posicaoPlayer):
	var distancia = posicaoPlayer - global_position
	
	if distancia.length() > 0: setVelocidadesNosEixos(distancia.normalized())


func setVelocidadesNosEixos(direcaoNormalizada):
		velocity.x = direcaoNormalizada.x * velocidadeEixoX
		velocity.y = direcaoNormalizada.y * velocidadeEixoY
		
		move_and_slide()
	
func _on_raio_de_perseguicao_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		referenciaDoJogador = body
		$Sprite2D.play("Run")

func _on_raio_de_perseguicao_body_exited(body: Node2D) -> void:
	if body.is_in_group("Player"): 
		referenciaDoJogador = null
		$Sprite2D.play("Idle")
		
func _on_costas_do_inimigo_body_entered(body: Node2D) -> void:
	velocidadeEixoX *= -1 

func _on_costas_do_inimigo_body_exited(dwwdbody: Node2D) -> void:
	velocidadeEixoX *= -1 
