extends Node2D
@onready var fade_rect: ColorRect = $CanvasLayer/FadeRect
@onready var animation_player: AnimationPlayer = $AnimationPlayer
var is_changing_scene := false


func changjingjiazaiguodu(target_path: String) -> void:
	fade_rect.mouse_filter = Control.MOUSE_FILTER_STOP
	animation_player.play("fadein")
	await animation_player.animation_finished
	get_tree().change_scene_to_file(target_path)
	animation_player.play("fadeout")
	await animation_player.animation_finished
	fade_rect.mouse_filter = Control.MOUSE_FILTER_IGNORE
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
