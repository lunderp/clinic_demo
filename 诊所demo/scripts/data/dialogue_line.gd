extends Resource
class_name DialogueLine

@export var speaker_id: String = "patient"
@export var expression: String = "normal"#心情，决定这句话的时候使用的立绘

@export_multiline var text: String
