class_name Room3 extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.y_sort_enabled = true
	PlayerManager.set_as_parent(self)
	var key = $Key1
	var trunk = $Trunk
	key.trunk = trunk
	
	var door_key = $Key2
	var chest = $Chest
	
	door_key.chest = chest


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
