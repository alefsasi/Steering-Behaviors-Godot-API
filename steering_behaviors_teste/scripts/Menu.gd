extends Node

func _on_seek_pressed():
	get_tree().change_scene("res://scenes/Seek.tscn")

func _on_flee_pressed():
	get_tree().change_scene("res://scenes/Flee.tscn")
	
func _on_arrival_pressed():
	get_tree().change_scene("res://scenes/Arrival.tscn")

func _on_wander_pressed():
	get_tree().change_scene("res://scenes/Wander.tscn")
	
func _on_pursuit_pressed():
	get_tree().change_scene("res://scenes/Pursuit.tscn")
	
func _on_evade_pressed():
	get_tree().change_scene("res://scenes/Evade.tscn")

func _on_Info_pressed():
	get_tree().change_scene("res://scenes/Info.tscn")


