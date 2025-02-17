extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body):  #used to trigger something when interacted with killzone area
	print("you died!")
	Engine.time_scale=0.5 #slows time when player dies
	body.get_node("CollisionShape2D").queue_free() #removes collision from player to make it fall through map when he dies
	timer.start()	#used for a time delay before action is taken

func _on_timer_timeout():
	Engine.time_scale=1
	get_tree().reload_current_scene() #restarts the scene when timer ends
	
