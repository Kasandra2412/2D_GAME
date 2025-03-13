class_name Room1 extends Node2D
@onready var label: Label = $Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var time_left = GlobalTimer.get_time_left()
	var minutes = time_left[0] #minutes
	var seconds = time_left[1] #secods
	label.text="%02d:%02d" %[minutes,seconds]
	pass
