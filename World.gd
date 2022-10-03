extends Node2D

enum { 
	MOVING,
	SHOOTING,
}
var state = MOVING

var moving_crosshair = preload("res://Sprite-0001.png")
var shooting_crosshair = preload("res://Sprite-0002.png")

func _ready():
	pass

func _physics_process(delta):
	match state:
		MOVING: Input.set_custom_mouse_cursor(moving_crosshair, Input.CURSOR_ARROW, Vector2(4, 4))
		SHOOTING: Input.set_custom_mouse_cursor(shooting_crosshair, Input.CURSOR_ARROW, Vector2(4, 4))
	
	if Input.is_action_pressed("shooting"):
		state = SHOOTING
	else: state = MOVING
