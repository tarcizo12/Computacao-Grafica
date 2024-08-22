extends CharacterBody2D

class_name Enemy

var referenciaDoJogador = null

@export_category("Objects")
@export var animacaoPlayer: AnimationPlayer = null


func _on_raio_de_perseguicao_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"): 
		print(body, "Esse corpo entrou")
		referenciaDoJogador = body
	
	
	


func _on_raio_de_perseguicao_body_exited(body: Node2D) -> void:
		if body.is_in_group("Player"): 
			print(body, "Esse corpo saiu")
			referenciaDoJogador = null

	
