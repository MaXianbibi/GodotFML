extends Control
class_name Dialogue

@onready var person_label : Label = $Person

var person_name : String = "":
	set(value):
		person_label.text = value
		person_name = value


func _ready():
	var entities : Array = get_tree().get_nodes_in_group("Entities")
	for entity in entities:
		if entity is Entity:
			entity.show_dialogue.connect(_show_dialogue)
	
func _process(delta):
	pass
	
func setup_dialogue():
	pass


func _show_dialogue(data : Dictionary):
	visible = true
	if data.has("name"):
		person_name = data.name

func _on_button_button_up():
	visible = false
	
