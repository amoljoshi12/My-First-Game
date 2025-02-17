extends Area2D

@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer



func _on_body_entered(body: Node2D):      # from nodes tab used this function to interact when character touches coin
	game_manager.add_point()    		  # adds point to current score after collecting coin
	animation_player.play("pickup")           			  #removes coins after touching them


func _on_area_2d_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
