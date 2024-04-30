extends Node
class_name Teleporter

@export var nodeToTeleport : Node = null
@onready var city : Node = get_tree().get_nodes_in_group("City").front()
@onready var player : Player = get_tree().get_nodes_in_group("Player").front()

@onready var camera : Camera2D = get_tree().get_nodes_in_group("Camera").front()


func _ready():
	pass
	


func teleportPlayerToDestination(destination : Node = nodeToTeleport):
	camera.position_smoothing_enabled = false
	player.position = destination.get_node("SpawnPoint").global_position
	$Timer.start()
	


	
	
	



func _on_timer_timeout():
	camera.position_smoothing_enabled = true
