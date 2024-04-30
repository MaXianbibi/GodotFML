extends Node2D
class_name Door

@onready var sprite : AnimatedSprite2D = $AnimatedSprite2D
@onready var timer : Timer = $Timer
@export var node_to_teleport : Node
@onready var teleporterNode : Teleporter = $TeleportePlayer

var is_open : bool = false

func open_door():
	if is_open:
		return
	sprite.play("open")
	
	teleporterNode.teleportPlayerToDestination(node_to_teleport)
	
	timer.start()
	is_open = true

func close_door():
	sprite.play("close")
	is_open = false

func _on_interact_with_mouse_component_open_interaction():
	open_door()

func _on_timer_timeout():
	close_door()
