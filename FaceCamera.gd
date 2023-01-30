extends Spatial

onready var cam_pivot = get_node("/root/Game/CamPivot")

func _process(_delta):
	rotation.y = cam_pivot.game_angle
