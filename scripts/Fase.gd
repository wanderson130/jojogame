extends Node2D

var pontuacao = 0
var vida = 3

func _on_Area2D_body_entered(body):
	print("Entrou")

func _on_moeda_coin_collected():
	pontuacao += 10
	print("Pontuação: " + str(pontuacao))
	
func _on_Morte_death_collected():
		get_tree().change_scene("res://scenes/Gameover.tscn")

func _on_Morte2_death_collected():
	vida = vida - 1
	print("Vidas Restantes: " + str(vida))
	if vida<1:
		get_tree().change_scene("res://scenes/Gameover.tscn")
	else:
		get_tree().reload_current_scene()

func _on_Morte3_death_collected():
	vida = vida - 1
	print("Vidas Restantes: " + str(vida))
	if vida<1:
		get_tree().change_scene("res://scenes/Gameover.tscn")
	else:
		get_tree().reload_current_scene()
