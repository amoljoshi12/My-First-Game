extends Area2D

var entered=false


func _on_body_entered(body: Node2D) -> void:
	entered=true
	
	
func _process(delta: float) -> void:
	if entered==true:
		get_tree().change_scene_to_file("res://scenes/level_2.tscn")
