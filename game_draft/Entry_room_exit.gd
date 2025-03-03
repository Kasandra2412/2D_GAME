extends Area2D

var entered = false

#exit between rooms


func _on_body_entered(body: Node2D) -> void:
	entered = true # Replace with function body.


func _on_body_shape_exited(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	entered = false #  Replace with function body.

func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("enter"):
			get_tree().change_scene_to_file("res://Room3.tscn")
	
			
