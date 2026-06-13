extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_pressed() -> void:
	SceneManager.changjingjiazaiguodu("res://TSCN/Clinic_main.tscn")# 这里应该写跳转场景
	pass 
