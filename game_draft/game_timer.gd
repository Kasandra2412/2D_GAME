extends Node

var time_left: float = 780
var running: bool = false


# Called when the node enters the scene tree for the first time.
func start_time(duration: float):
	if !running:
		time_left = duration
		running=true
		
func _process(delta: float) -> void:
	if running and time_left>1:
		time_left -= delta
	elif time_left <=0 and running:
		running = false  #stop the timer
		

func get_time_left():
	var minute = floor(time_left / 60)
	var second = int(time_left)%60
	return [minute,second]
	
# Called every frame. 'delta' is the elapsed time since the previous frame.

	
