extends Resource

class_name DialogueNode

enum NodeType {
	NORMAL,
	END
}

@export var node_id: String = "start"
@export var node_type: NodeType = NodeType.NORMAL

@export var lines: Array[DialogueLine]
@export var choices: Array[DialogueChoice]
