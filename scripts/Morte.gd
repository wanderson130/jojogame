extends Area2D

export(String) var atualLevel = null
var vida = 3

func _on_Morte_body_entered(body):
	if vida<1:
		get_tree().change_scene("res://scenes/Gameover.tscn")
	else:
		vida = vida - 1
		get_tree().change_scene("res://scenes/Gameover.tscn")
		#get_tree().change_scene(atualLevel)
	
#func _on_morte_body_entered(body : PhysicsBody2D)->void:
#	if body.is_in_group("player"):
#		emit_signal("death_collected")
#		
#func _on_Morte_death_collected():
#	vida = vida - 1
#	print("Vidas Restantes: " + str(vida))
#	if vida<1:
#		get_tree().change_scene("res://scenes/Morte.tscn")
#	else:
#		get_tree().change_scene("res://scenes/Fase1.tscn")
