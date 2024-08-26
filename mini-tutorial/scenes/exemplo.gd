extends CharacterBody2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	if !body.is_in_group('Exemplo'):
		print("Algum corpo entrou, ", body)
	pass # Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	if !body.is_in_group('Exemplo'):
		print("Algum corpo saiu, ", body)
	pass # Replace with function body.
