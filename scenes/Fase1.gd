extends Node2D

var pontuacao = 0

func _on_Area2D_body_entered(body):
	print("Entrou")

func _on_moeda_coin_collected():
	pontuacao += 10
	print("Pontuação: " + str(pontuacao))
