extends Node2D
const SPEED=50
var direction=1

@onready var ray_cast_right: RayCast2D = $RayCastRight #detects the right side of enemy if there is obstacle
@onready var ray_cast_left: RayCast2D = $RayCastLeft   #detects the left side of enemy if there is obstacle
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D



func _process(delta: float):
	if ray_cast_right.is_colliding(): #detects whether right side is colliding
		direction=-1 # flips the direction to left if found colliding
		animated_sprite_2d.flip_h=true #flips enemy shape when it collides
	if ray_cast_left.is_colliding(): #detects whether right side is colliding
		direction=1 # flips the direction to right if found colliding
		animated_sprite_2d.flip_h=false
	position.x += direction*SPEED*delta # adjust speed and direction
	
