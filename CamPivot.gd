extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var game_angle = 0
var turn_angle = 0.001

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	game_angle = rotation.y

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(turn_angle * event.relative.x)
	if event is InputEventKey and event.scancode == KEY_ESCAPE:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
