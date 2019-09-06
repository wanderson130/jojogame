extends KinematicBody2D

const UP = Vector2(0, -1)
var move = Vector2()

export var speedX    = 200
export var jumpForce = -80
export var gravity   = 200
export var maxJumps  = 2
export var life = 3
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move.y += gravity * delta
	$AnimatedSprite.playing = true
	
	if Input.is_action_pressed("ui_left"):
		move.x = -speedX * 2 
		if move.y>0:
			$AnimatedSprite.animation = "walking"
			$AnimatedSprite.flip_h = true
	elif Input.is_action_pressed("ui_right"):
		move.x = speedX * 2
		if move.y>0:	
			$AnimatedSprite.animation = "walking"
			$AnimatedSprite.flip_h = false
	else:
		$AnimatedSprite.animation = "idle"
		move.x = 0
		
	#if is_on_floor():
	#	move.y = 0
	if Input.is_action_pressed("ui_accept"):
		move.y = jumpForce
		$AnimatedSprite.animation = "jumping"
	move_and_slide(move, UP)
	
