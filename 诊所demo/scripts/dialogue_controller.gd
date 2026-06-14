extends Control

@export var patient_data: PatientData

@onready var speaker_label: Label = $SpeakerLabel
@onready var dialogue_text: RichTextLabel = $DialogueText
@onready var next_button: Button = $NextButton
@onready var choices_container: VBoxContainer = $ChoicesContainer

var current_node: DialogueNode
var current_line_index := 0


func _ready() -> void:
	next_button.pressed.connect(_on_next_pressed)
	
	if patient_data == null:
		push_warning("DialogueController 没有设置 patient_data")
		return
	
	start_dialogue(patient_data)


func start_dialogue(data: PatientData) -> void:
	
	current_node = data.get_node_by_id(data.start_node_id)
	show_node(current_node)


func show_node(node: DialogueNode) -> void:
	if node == null:
		push_warning("找不到对话节点")
		return
	
	current_node = node
	current_line_index = 0
	
	clear_choices()
	show_current_line()


func show_current_line() -> void:
	if current_line_index >= current_node.lines.size():
		show_choices()
		return
	
	var line = current_node.lines[current_line_index]
	
	speaker_label.text = line.speaker_id
	dialogue_text.text = line.text
	
	next_button.visible = true
	choices_container.visible = false


func _on_next_pressed() -> void:
	current_line_index += 1
	show_current_line()


func show_choices() -> void:
	next_button.visible = false
	clear_choices()
	
	if current_node.node_type == DialogueNode.NodeType.END:
		create_end_button()
		return
	
	choices_container.visible = true
	
	for choice in current_node.choices:
		var button := Button.new()
		button.text = choice.text
		choices_container.add_child(button)
		
		button.pressed.connect(func():
			jump_to_node(choice.next_node_id)
		)


func jump_to_node(node_id: String) -> void:
	var next_node := patient_data.get_node_by_id(node_id)
	show_node(next_node)


func create_end_button() -> void:
	choices_container.visible = true
	
	var button := Button.new()
	button.text = "结束问诊"
	choices_container.add_child(button)
	
	button.pressed.connect(func():
		print("问诊结束")
		hide()
	)


func clear_choices() -> void:
	for child in choices_container.get_children():
		child.queue_free()
