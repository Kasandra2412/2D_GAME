class_name Room3 extends Node2D
@onready var label: Label = $timer
@onready var losing_screen: Panel = $LosingScreen

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.y_sort_enabled = true
	#PlayerManager.set_as_parent(self)
	var key = $Key1
	var trunk = $Trunk
	key.trunk = trunk
	
	var door_key = $Key2
	var chest = $Chest
	door_key.chest = chest
	losing_screen.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var time_left = GlobalTimer.get_time_left()
	var minutes = time_left[0] #minutes
	var seconds = time_left[1] #secods
	label.text="%02d:%02d" %[minutes,seconds]
	
	if minutes == 0 and seconds == 0:
		losing_screen.visible = true

	
