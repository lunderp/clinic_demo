extends Resource
class_name PatientData

@export var patient_id: String
@export var patient_name: String
@export var age: int = 0

@export var portrait: Texture2D

@export_multiline var intro_text: String
@export_multiline var symptom_text: String

@export var diagnosis_options: Array[String]
@export var correct_diagnosis: String

@export var money_change: int = 0
@export var stress_change: int = 0

@export_multiline var record_text: String
