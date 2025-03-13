class_name Room_2 extends Node2D

@onready var label: Label = $Timer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var time_left = GlobalTimer.get_time_left()
	var minutes = time_left[0] #minutes
	var seconds = time_left[1] #secods
	label.text="%02d:%02d" %[minutes,seconds]
	pass
