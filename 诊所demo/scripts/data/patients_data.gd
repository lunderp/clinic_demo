extends Resource
class_name PatientData

@export var patient_id: String
@export var patient_name: String
@export var age: int = 0

@export var portrait: Texture2D

@export var start_node_id: String = "start"
@export var dialogue_nodes: Array[DialogueNode]

@export var money_change: int = 0
@export var stress_change: int = 0


func get_node_by_id(id: String) -> DialogueNode:
	for node in dialogue_nodes:
		if node.node_id == id:
			return node
	return null
	
@export_multiline var record_text: String
