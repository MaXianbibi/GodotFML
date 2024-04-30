extends Area2D
class_name InteractWithKeyBoardComponent

signal open_interaction

var clickable : bool = false

func _ready():
	pass

func _process(_delta):
	if not clickable:
		return
	if Input.is_action_just_released("E"):
		open_interaction.emit()

func _on_body_entered(body):
	if body is Player:
		clickable = true


func _on_body_exited(body):
	if body is Player:
		clickable = false

