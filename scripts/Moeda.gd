extends Area2D

signal coin_collected

func _on_moeda_body_entered(body : PhysicsBody2D)->void:
	if body.is_in_group("player"):
		emit_signal("coin_collected")
		queue_free()