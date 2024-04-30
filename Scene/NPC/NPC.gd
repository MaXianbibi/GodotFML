extends Entity
class_name NPC

@onready var mouse_interaction_node : InteractWithMouseComponent = $InteractWithMouseComponent
@export var npc_name : String = "super mf"

func _ready():
	mouse_interaction_node.open_interaction.connect(put_dialogue)
	
func put_dialogue():
	var data : Dictionary = {
		"name" : npc_name
	}
	show_dialogue.emit(data)
