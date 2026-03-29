extends Node2D


# Called when the node enters the scene tree for the first time.
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _show():
	$OpenTile.visible = true

func _hide():
	$OpenTile.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _disable_collision():
	$CollisionShape2D.set_deferred("disabled", true)

func _enable_collision():
	$CollisionShape2D.set_deferred("disabled", false)


func _on_close_door_pressed() -> void:
	_hide() # Replace with function body.


func _on_open_door_button_pressed() -> void:
	_show() # Replace with function body.


func _on_area_2d_body_entered(body: Node2D) -> void:
	_show() # Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	_hide() # Replace with function body.
