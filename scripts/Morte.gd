extends Area2D

signal death_collected

func _on_Morte_body_entered(body):
	emit_signal("death_collected")