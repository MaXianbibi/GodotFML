extends Camera2D


@export var player : Player = null


func _process(delta):
	position = player.position
