extends Resource
class_name DialogueChoice

enum ActionType {
	GOTO_NODE,
	END_PATIENT,
	SPECIAL_EVENT
}

@export var choice_text: String
@export var action_type: ActionType = ActionType.GOTO_NODE
@export var target_node_id: String = ""

@export var money_delta: int = 0
@export var stress_delta: int = 0
