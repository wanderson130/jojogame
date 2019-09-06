extends Area2D

export(String) var nextLevel = null

func _on_Bandeira_body_entered(body):
	if body.is_in_group("player"):
		get_tree().change_scene(nextLevel)
