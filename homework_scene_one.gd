extends Node2D
@export var rotation_speed : int = 2


# Called when the node enters the scene tree for the first time.
func _ready():
	$Button.pressed.connect(_on_button_pressed)

func _rotate_me():
	$Sonic.transform = $Sonic.transform.rotated_local(rotation_speed)

func _on_button_pressed() -> void:
	_rotate_me()
