class_name Chest_Key extends StaticBody2D

signal chest_opened
@export var trunk:  OpenTrunk
var chest_key_taken = false
var in_chest_zone = false #variable to make the chest key visable 


func _on_area_2d_body_entered(body: Node2D) -> void:
	if trunk != null:
		if chest_key_taken == false and trunk.is_trunk_open:
			print("Trunk is open. Key can be retrieved")
			chest_key_taken = true
			$Chest_Key.queue_free()
	else:
		print("trunk null!")
		pass
		
func _on_chest_area_2_body_entered(body) -> void:
	if body.name == "Player":
		in_chest_zone = true
	pass # Replace with function body.

func _on_chest_area_2_body_exited(body) -> void:
	in_chest_zone = false
	pass # Replace with function body.
	
func _process(delta):
	if chest_key_taken == true and in_chest_zone == true:
		if Input.is_action_just_pressed("click"):
			print("Chest opened") #opens the chest
			chest_opened.emit()
			
