extends Node2D
@export var rotation_speed : float = .1
var is_rotating : bool


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _start_rotating():
	is_rotating = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (is_rotating):
		$Sonic.transform = $Sonic.transform.rotated_local(rotation_speed)
	
	


func _on_collision_shape_2d_child_entered_tree(node: Node) -> void:
	pass # Replace with function body.


func _on_area_2d_body_entered(body: Node2D) -> void:
	_start_rotating() # Replace with function body.
