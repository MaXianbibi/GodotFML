extends Area2D
class_name InteractWithMouseComponent

signal open_interaction

var clickable : bool = false

func _ready():
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)

func _process(_delta):
	if not clickable:
		return
	if Input.is_action_just_released("Mouse_Left"):
		open_interaction.emit()
		

func _on_mouse_entered():
	Input.set_custom_mouse_cursor(GlobalImages.pointer_cursor)
	clickable = true

func _on_mouse_exited():
	Input.set_custom_mouse_cursor(GlobalImages.normal_cursor)	
	clickable = false
